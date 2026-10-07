import SparseSoundness
import MatrixSoundness
import Vasc11.Assembly

namespace VascCertificate.Polynomial
open scoped BigOperators Matrix
open Sparse

def sumPoly {n : ℕ} (ps : List (Poly n)) : Poly n := ps.flatten
def prodPoly {n : ℕ} (ps : List (Poly n)) : Poly n := ps.foldr mul (C 1)
def exponentsAdd {n : ℕ} (e f : Exp n) : Exp n := fun i => e i + f i

/-- U stores full cross coefficients on and below the diagonal. -/
def uncentered {n q : ℕ} (U : Gram.ZMat q) (E : Fin q → Exp n) : Poly n :=
  sumPoly ((List.finRange q).flatMap fun a =>
    ((List.finRange q).filter fun b => b ≤ a).map fun b =>
      monomial (exponentsAdd (E a) (E b)) (U a b))

def centered {n q : ℕ} (U : Gram.ZMat q) (e₀ : Exp n) (E : Fin q → Exp n) : Poly n :=
  sumPoly ((List.finRange q).flatMap fun a =>
    ((List.finRange q).filter fun b => b ≤ a).map fun b =>
      scale (U a b) (add (add
        (monomial (exponentsAdd (E a) (E b)) 1)
        (monomial (exponentsAdd (E a) e₀) (-1)))
        (add (monomial (exponentsAdd e₀ (E b)) (-1))
          (monomial (exponentsAdd e₀ e₀) 1))))

structure Block (n : ℕ) where
  q : ℕ
  U : Gram.ZMat q
  R : Gram.ZMat q
  C : Gram.ZMat q
  J : Gram.ZMat q
  E : Fin q → Exp n
  mask : Exp n

structure DerivativeBlock extends Block 11 where
  anchor : Exp 11

def blockCheck {n : ℕ} (b : Block n) : Bool :=
  Gram.checkMatrixWitness (Gram.fromTri b.U) b.R b.C b.J

def boundaryBlockPoly (b : Block 10) : Poly 10 :=
  mul (monomial b.mask 1) (uncentered b.U b.E)
def derivativeBlockPoly (b : DerivativeBlock) : Poly 11 :=
  mul (monomial b.mask 1) (centered b.U b.anchor b.E)

/-- Fin addition is cyclic; exponent transport uses the inverse permutation. -/
def rotation (r : Fin 11) : Equiv.Perm (Fin 11) := Equiv.addRight r

def derivativeSum (bs : List DerivativeBlock) : Poly 11 :=
  sumPoly ((List.finRange 11).map fun r =>
    permute (rotation r) (sumPoly (bs.map derivativeBlockPoly)))
def boundarySum (bs : List (Block 10)) : Poly 10 :=
  sumPoly (bs.map boundaryBlockPoly)

/-- These definitions expand the target itself; no cached coefficient rows occur. -/
def aFrom {n : ℕ} (xs : Fin 11 → Poly n) (i : Fin 11) : Poly n :=
  add (xs i) (neg (xs (VascN11.next11 i)))
def dFrom {n : ℕ} (xs : Fin 11 → Poly n) (i : Fin 11) : Poly n :=
  add (xs (VascN11.next11 i)) (xs (VascN11.next210 i))
def pFrom {n : ℕ} (xs : Fin 11 → Poly n) : Poly n :=
  sumPoly ((List.finRange 11).map fun i => mul (aFrom xs i)
    (prodPoly (((List.finRange 11).filter fun j => j ≠ i).map (dFrom xs))))
def hFrom {n : ℕ} (xs : Fin 11 → Poly n) : Poly n :=
  scale 2 (sumPoly ((List.finRange 11).flatMap fun i =>
    ((List.finRange 11).filter fun j => j ≠ i).map fun j =>
      mul (aFrom xs i) (prodPoly (((List.finRange 11).filter
        fun k => k ≠ i ∧ k ≠ j).map (dFrom xs)))))
def pPoly : Poly 11 := pFrom X
def hPoly : Poly 11 := hFrom X
def ellPoly : Poly 11 := sumPoly ((List.finRange 11).map X)
def boundaryVars (i : Fin 11) : Poly 10 :=
  if h : i.val < 10 then X ⟨i.val, h⟩ else C 0
def bPoly : Poly 10 := pFrom boundaryVars

/-- Integer-scaled multiplier: 55 triangular monomial weights plus the W form. -/
def coordinateExponents (i : Fin 10) : Exp 10 := fun j => if j = i then 1 else 0
structure Multiplier where
  weights : Gram.ZMat 10
  U : Gram.ZMat 10
  R : Gram.ZMat 10
  C : Gram.ZMat 10
  J : Gram.ZMat 10

def multiplierPoly (m : Multiplier) : Poly 10 :=
  add (uncentered m.weights coordinateExponents) (uncentered m.U coordinateExponents)
def multiplierCheck (m : Multiplier) : Bool :=
  decide ((∀ i j, j ≤ i → 0 ≤ m.weights i j) ∧ (∀ i, 0 < m.weights i i)) &&
  Gram.checkMatrixWitness (Gram.fromTri m.U) m.R m.C m.J

def derivativeCheck (L : ℤ) (bs : List DerivativeBlock) : Bool :=
  checkEq (scale L (mul ellPoly hPoly)) (derivativeSum bs)
def boundaryCheck (m : Multiplier) (bs : List (Block 10)) : Bool :=
  checkEq (mul (multiplierPoly m) bPoly) (boundarySum bs)

theorem eval_sumPoly {n : ℕ} (ps : List (Poly n)) (x : Fin n → ℝ) :
    eval (sumPoly ps) x = (ps.map fun p => eval p x).sum := by
  induction ps with
  | nil => simp [sumPoly, eval]
  | cons p ps ih =>
    change eval (add p (sumPoly ps)) x = _
    simp [eval_add, ih]

theorem eval_prodPoly {n : ℕ} (ps : List (Poly n)) (x : Fin n → ℝ) :
    eval (prodPoly ps) x = (ps.map fun p => eval p x).prod := by
  induction ps with
  | nil => simp [prodPoly, eval_C]
  | cons p ps ih =>
    change eval (mul p (prodPoly ps)) x = _
    simp [eval_mul, ih]

lemma sum_finRange {q : ℕ} (f : Fin q → ℝ) :
    ((List.finRange q).map f).sum = ∑ i, f i := (Fin.sum_univ_def f).symm

lemma sum_filter_finRange {q : ℕ} (p : Fin q → Prop) [DecidablePred p]
    (f : Fin q → ℝ) :
    (((List.finRange q).filter fun i => decide (p i)).map f).sum =
      ∑ i ∈ Finset.univ.filter p, f i := by
  rw [← List.sum_toFinset _ ((List.nodup_finRange q).filter _)]
  simp

lemma prod_filter_finRange {q : ℕ} (p : Fin q → Prop) [DecidablePred p]
    (f : Fin q → ℝ) :
    (((List.finRange q).filter fun i => decide (p i)).map f).prod =
      ∏ i ∈ Finset.univ.filter p, f i := by
  rw [← List.prod_toFinset _ ((List.nodup_finRange q).filter _)]
  simp

lemma tri_nonneg_witness {q : ℕ} (U R C J : Gram.ZMat q)
    (h : Gram.checkMatrixWitness (Gram.fromTri U) R C J = true) (v : Fin q → ℝ) :
    0 ≤ Gram.tri U v := by
  have hh := Gram.checkMatrixWitness_sound _ _ _ _ h v
  rw [Gram.quad_twice_tri] at hh
  linarith

lemma monEval_exponentsAdd {n : ℕ} (e f : Exp n) (x : Fin n → ℝ) :
    monEval (exponentsAdd e f) x = monEval e x * monEval f x := monEval_add e f x

theorem eval_uncentered {n q : ℕ} (U : Gram.ZMat q) (E : Fin q → Exp n)
    (x : Fin n → ℝ) : eval (uncentered U E) x = Gram.tri U (fun a => monEval (E a) x) := by
  simp only [uncentered, eval_sumPoly, List.map_flatten, List.flatMap_def, List.sum_flatten, List.map_map,
    List.map_map, Function.comp_def, eval_monomial, monEval_exponentsAdd]
  simp only [← mul_assoc, sum_filter_finRange, sum_finRange, Gram.tri]

theorem eval_centered {n q : ℕ} (U : Gram.ZMat q) (e₀ : Exp n) (E : Fin q → Exp n)
    (x : Fin n → ℝ) : eval (centered U e₀ E) x =
      Gram.tri U (fun a => monEval (E a) x - monEval e₀ x) := by
  simp only [centered, eval_sumPoly, List.map_flatten, List.flatMap_def, List.sum_flatten, List.map_map,
    List.map_map, Function.comp_def, eval_scale, eval_add, eval_monomial,
    monEval_exponentsAdd, Int.cast_one, Int.cast_neg, one_mul, neg_one_mul]
  simp only [sum_filter_finRange, sum_finRange, Gram.tri]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  ring

theorem boundaryBlock_nonneg (b : Block 10) (hc : blockCheck b = true)
    (x : Fin 10 → ℝ) (hx : ∀ i, 0 ≤ x i) : 0 ≤ eval (boundaryBlockPoly b) x := by
  rw [boundaryBlockPoly, eval_mul, eval_monomial, eval_uncentered]
  simpa using mul_nonneg (monEval_nonneg b.mask x hx)
    (tri_nonneg_witness b.U b.R b.C b.J hc _)

theorem derivativeBlock_nonneg (b : DerivativeBlock) (hc : blockCheck b.toBlock = true)
    (x : Fin 11 → ℝ) (hx : ∀ i, 0 ≤ x i) : 0 ≤ eval (derivativeBlockPoly b) x := by
  rw [derivativeBlockPoly, eval_mul, eval_monomial, eval_centered]
  simpa using mul_nonneg (monEval_nonneg b.mask x hx)
    (tri_nonneg_witness b.U b.R b.C b.J hc _)

theorem derivativeSum_nonneg (bs : List DerivativeBlock)
    (hc : ∀ b ∈ bs, blockCheck b.toBlock = true)
    (x : Fin 11 → ℝ) (hx : ∀ i, 0 ≤ x i) : 0 ≤ eval (derivativeSum bs) x := by
  simp only [derivativeSum, eval_sumPoly, List.map_map, Function.comp_def, eval_permute]
  apply List.sum_nonneg
  intro y hy
  obtain ⟨r, _, rfl⟩ := List.mem_map.mp hy
  apply List.sum_nonneg
  intro y hy
  obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hy
  exact derivativeBlock_nonneg b (hc b hb) _ (fun i => hx _)

theorem boundarySum_nonneg (bs : List (Block 10)) (hc : ∀ b ∈ bs, blockCheck b = true)
    (x : Fin 10 → ℝ) (hx : ∀ i, 0 ≤ x i) : 0 ≤ eval (boundarySum bs) x := by
  simp only [boundarySum, eval_sumPoly, List.map_map, Function.comp_def]
  apply List.sum_nonneg
  intro y hy
  obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hy
  exact boundaryBlock_nonneg b (hc b hb) x hx


lemma eval_pFrom {n : ℕ} (xs : Fin 11 → Poly n) (x : Fin n → ℝ) :
    eval (pFrom xs) x = VascN11.clearedP (fun i => eval (xs i) x) := by
  classical
  simp only [pFrom, eval_sumPoly, List.map_map, Function.comp_def,
    eval_mul, eval_prodPoly, aFrom, eval_add, eval_neg, dFrom]
  simp only [prod_filter_finRange, sum_finRange]
  unfold VascN11.clearedP VascN11.a VascN11.d
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.prod_subtype (p := fun j : Fin 11 => j ≠ i)
    (F := inferInstance)
    (Finset.univ.filter (fun j : Fin 11 => j ≠ i)) (by simp)]
  simp [sub_eq_add_neg]

theorem eval_pPoly (x : Fin 11 → ℝ) : eval pPoly x = VascN11.clearedP x := by
  simpa only [pPoly, eval_X] using eval_pFrom X x

theorem eval_bPoly (z : Fin 10 → ℝ) : eval bPoly z = VascN11.boundaryP z := by
  rw [bPoly, eval_pFrom]
  congr 1
  funext i
  simp only [boundaryVars]
  split_ifs <;> simp [eval_X, eval_C]

theorem eval_ellPoly (x : Fin 11 → ℝ) : eval ellPoly x = ∑ i, x i := by
  simp [ellPoly, eval_sumPoly, eval_X, List.map_map, sum_finRange]


noncomputable def explicitH (x : Fin 11 → ℝ) : ℝ :=
  2 * ∑ i : Fin 11, ∑ j ∈ Finset.univ.erase i,
    VascN11.a x i * ∏ k ∈ (Finset.univ.erase i).erase j, VascN11.d x k

theorem eval_hPoly (x : Fin 11 → ℝ) : eval hPoly x = explicitH x := by
  classical
  simp only [hPoly, hFrom, eval_scale, eval_sumPoly, List.map_flatten,
    List.flatMap_def, List.sum_flatten, List.map_map, Function.comp_def,
    eval_mul, eval_prodPoly, aFrom, eval_add, eval_neg, eval_X, dFrom]
  simp only [prod_filter_finRange, sum_filter_finRange, sum_finRange, Int.cast_ofNat]
  unfold explicitH VascN11.a VascN11.d
  congr 1

theorem clearedP_hasDerivAt_shift (x : Fin 11 → ℝ) (t : ℝ) :
    HasDerivAt (fun s : ℝ => VascN11.clearedP (fun i => x i + s))
      (explicitH (fun i => x i + t)) t := by
  classical
  have hp (y : Fin 11 → ℝ) : VascN11.clearedP y =
      ∑ i : Fin 11, VascN11.a y i * ∏ j ∈ Finset.univ.erase i, VascN11.d y j := by
    unfold VascN11.clearedP
    apply Finset.sum_congr rfl
    intro i _
    rw [← Finset.prod_subtype (p := fun j : Fin 11 => j ≠ i) (Finset.univ.erase i) (by simp)]
  simp_rw [hp]
  have hd (i : Fin 11) : HasDerivAt
      (fun s : ℝ => VascN11.d (fun j => x j + s) i) 2 t := by
    convert ((hasDerivAt_const t (x (VascN11.next11 i))).add (hasDerivAt_id t)).add
      ((hasDerivAt_const t (x (VascN11.next210 i))).add (hasDerivAt_id t)) using 1
    norm_num
  have ha (i : Fin 11) : HasDerivAt
      (fun s : ℝ => VascN11.a (fun j => x j + s) i) 0 t := by
    convert ((hasDerivAt_const t (x i)).add (hasDerivAt_id t)).sub
      ((hasDerivAt_const t (x (VascN11.next11 i))).add (hasDerivAt_id t)) using 1
    simp
  convert HasDerivAt.fun_sum (u := Finset.univ) (fun i _ =>
    (ha i).mul (HasDerivAt.fun_finset_prod (u := Finset.univ.erase i) (fun j _ => hd j))) using 1
  simp only [zero_mul, zero_add, smul_eq_mul, explicitH, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem H_eq_explicitH (x : Fin 11 → ℝ) : VascN11.H x = explicitH x := by
  unfold VascN11.H
  simpa using (clearedP_hasDerivAt_shift x 0).deriv

theorem H_zero : VascN11.H (fun _ => 0) = 0 := by
  rw [H_eq_explicitH]
  simp [explicitH, VascN11.a]

theorem boundaryP_zero : VascN11.boundaryP (fun _ => 0) = 0 := by
  simp [VascN11.boundaryP, VascN11.clearedP, VascN11.a]


theorem multiplier_pos (m : Multiplier) (hc : multiplierCheck m = true)
    (z : Fin 10 → ℝ) (hz : ∀ i, 0 ≤ z i) (hne : z ≠ 0) :
    0 < eval (multiplierPoly m) z := by
  obtain ⟨hw, hm⟩ := Bool.and_eq_true_iff.mp hc
  obtain ⟨hwn, hwp⟩ := of_decide_eq_true hw
  have he (i : Fin 10) : monEval (coordinateExponents i) z = z i := by
    simp [monEval, coordinateExponents]
  simp only [multiplierPoly, eval_add, eval_uncentered, he]
  have hsecond := tri_nonneg_witness m.U m.R m.C m.J hm z
  have hfirst : 0 < Gram.tri m.weights z := by
    have hn (a b : Fin 10) (hab : b ≤ a) : 0 ≤ (m.weights a b : ℝ) * z a * z b :=
      mul_nonneg (mul_nonneg (by exact_mod_cast hwn a b hab) (hz a)) (hz b)
    obtain ⟨i, hi⟩ : ∃ i, z i ≠ 0 := by
      by_contra! h
      exact hne (funext h)
    have hip : 0 < z i := lt_of_le_of_ne (hz i) (Ne.symm hi)
    unfold Gram.tri
    apply Finset.sum_pos'
    · intro a _
      exact Finset.sum_nonneg fun b hb => hn a b (Finset.mem_filter.mp hb).2
    · refine ⟨i, Finset.mem_univ _, ?_⟩
      apply Finset.sum_pos'
      · intro b hb
        exact hn i b (Finset.mem_filter.mp hb).2
      · exact ⟨i, by simp, mul_pos (mul_pos (by exact_mod_cast hwp i) hip) hip⟩
  exact add_pos_of_pos_of_nonneg hfirst hsecond


/-- Generic bridge; concrete certification must discharge all finite checker hypotheses. -/
theorem translationDerivative_nonneg_of_checks (L : ℤ) (hL : 0 < L)
    (bs : List DerivativeBlock) (hblocks : ∀ b ∈ bs, blockCheck b.toBlock = true)
    (hidentity : derivativeCheck L bs = true)
    (x : Fin 11 → ℝ) (hx : VascN11.nonnegative11 x) : 0 ≤ VascN11.H x := by
  by_cases hzero : x = 0
  · subst x
    exact le_of_eq H_zero.symm
  have hsum : 0 < ∑ i, x i := by
    apply Finset.sum_pos' (fun i _ => hx i)
    obtain ⟨i, hi⟩ : ∃ i, x i ≠ 0 := by
      by_contra! h
      exact hzero (funext h)
    exact ⟨i, Finset.mem_univ _, lt_of_le_of_ne (hx i) (Ne.symm hi)⟩
  have he := checkEq_sound _ _ hidentity x
  simp only [eval_scale, eval_mul, eval_ellPoly, eval_hPoly, ← H_eq_explicitH] at he
  have hn := derivativeSum_nonneg bs hblocks x hx
  rw [← he] at hn
  have hLp : (0 : ℝ) < L := by exact_mod_cast hL
  have hn' : 0 ≤ (∑ i, x i) * VascN11.H x := nonneg_of_mul_nonneg_right hn hLp
  exact nonneg_of_mul_nonneg_right hn' hsum


theorem boundaryP_nonneg_of_checks (m : Multiplier) (hm : multiplierCheck m = true)
    (bs : List (Block 10)) (hblocks : ∀ b ∈ bs, blockCheck b = true)
    (hidentity : boundaryCheck m bs = true)
    (z : Fin 10 → ℝ) (hz : VascN11.nonnegative10 z) : 0 ≤ VascN11.boundaryP z := by
  by_cases hzero : z = 0
  · subst z
    exact le_of_eq boundaryP_zero.symm
  have hp := multiplier_pos m hm z hz hzero
  have he := checkEq_sound _ _ hidentity z
  simp only [eval_mul, eval_bPoly] at he
  have hn := boundarySum_nonneg bs hblocks z hz
  rw [← he] at hn
  exact nonneg_of_mul_nonneg_right hn hp


end VascCertificate.Polynomial
