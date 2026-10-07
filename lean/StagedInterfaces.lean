import PolynomialInterfaces

namespace VascCertificate.Staged
open Sparse Polynomial

/-- One normalization per pair; an unmatched last polynomial is retained. -/
def pairSums {n : ℕ} : List (Poly n) → List (Poly n)
  | [] => []
  | [p] => [p]
  | p :: q :: ps => normalize (add p q) :: pairSums ps

/-- Fuel makes totality independent of a length theorem. The zero-fuel fallback
still computes the full sum, so insufficient fuel cannot discard data. -/
def balancedAux {n : ℕ} : ℕ → List (Poly n) → Poly n
  | 0, ps => normalize (sumPoly ps)
  | _ + 1, [] => []
  | _ + 1, [p] => normalize p
  | k + 1, ps => balancedAux k (pairSums ps)
def balancedSum {n : ℕ} (ps : List (Poly n)) : Poly n := balancedAux ps.length ps

def mulNF {n : ℕ} (p q : Poly n) : Poly n := normalize (mul (normalize p) (normalize q))
def prodNF {n : ℕ} (ps : List (Poly n)) : Poly n := ps.foldr mulNF (C 1)

/-- Expand literal target products with normalization after each multiplication. -/
def pFromNF {n : ℕ} (xs : Fin 11 → Poly n) : Poly n :=
  balancedSum ((List.finRange 11).map fun i => mulNF (aFrom xs i)
    (prodNF (((List.finRange 11).filter fun j => j ≠ i).map (dFrom xs))))
def hFromNF {n : ℕ} (xs : Fin 11 → Poly n) : Poly n :=
  normalize (scale 2 (balancedSum ((List.finRange 11).flatMap fun i =>
    ((List.finRange 11).filter fun j => j ≠ i).map fun j =>
      mulNF (aFrom xs i) (prodNF (((List.finRange 11).filter
        fun k => k ≠ i ∧ k ≠ j).map (dFrom xs))))))
def hNF : Poly 11 := hFromNF X
def bNF : Poly 10 := pFromNF boundaryVars

def derivativeTarget (L : ℤ) : Poly 11 := normalize (scale L (mulNF ellPoly hNF))
def boundaryTarget (m : Multiplier) : Poly 10 := mulNF (multiplierPoly m) bNF

/-- Noncached route: normalize every real block before combining it. -/
def derivativeSumNF (bs : List DerivativeBlock) : Poly 11 :=
  let base := balancedSum (bs.map fun b => normalize (derivativeBlockPoly b))
  balancedSum ((List.finRange 11).map fun r => normalize (permute (rotation r) base))
def boundarySumNF (bs : List (Block 10)) : Poly 10 :=
  balancedSum (bs.map fun b => normalize (boundaryBlockPoly b))
def derivativeCheckNF (L : ℤ) (bs : List DerivativeBlock) : Bool :=
  checkEq (derivativeTarget L) (derivativeSumNF bs)
def boundaryCheckNF (m : Multiplier) (bs : List (Block 10)) : Bool :=
  checkEq (boundaryTarget m) (boundarySumNF bs)

/-- Cached leaf data remain untrusted until their individual checks pass. -/
structure DerivativeWitness where
  block : DerivativeBlock
  compact : Poly 11
structure BoundaryWitness where
  block : Block 10
  compact : Poly 10

def derivativeLeafCheck (w : DerivativeWitness) : Bool :=
  checkEq (derivativeBlockPoly w.block) w.compact
def boundaryLeafCheck (w : BoundaryWitness) : Bool :=
  checkEq (boundaryBlockPoly w.block) w.compact

def derivativeCachedSum (ws : List DerivativeWitness) : Poly 11 :=
  let base := balancedSum (ws.map fun w => w.compact)
  balancedSum ((List.finRange 11).map fun r => normalize (permute (rotation r) base))
def boundaryCachedSum (ws : List BoundaryWitness) : Poly 10 :=
  balancedSum (ws.map fun w => w.compact)

/-- Target caches can be separately certified and need not be recomputed by the
final aggregate native check. -/
structure DerivativeTargetWitness where
  ell : Poly 11
  h : Poly 11
structure BoundaryTargetWitness where
  multiplier : Poly 10
  boundary : Poly 10

def derivativeTargetCheck (t : DerivativeTargetWitness) : Bool :=
  checkEq ellPoly t.ell && checkEq hNF t.h
def boundaryTargetCheck (m : Multiplier) (t : BoundaryTargetWitness) : Bool :=
  checkEq (multiplierPoly m) t.multiplier && checkEq bNF t.boundary

def derivativeCachedCheck (L : ℤ) (t : DerivativeTargetWitness)
    (ws : List DerivativeWitness) : Bool :=
  checkEq (normalize (scale L (mulNF t.ell t.h))) (derivativeCachedSum ws)
def boundaryCachedCheck (t : BoundaryTargetWitness) (ws : List BoundaryWitness) : Bool :=
  checkEq (mulNF t.multiplier t.boundary) (boundaryCachedSum ws)

theorem eval_pairSums {n : ℕ} (ps : List (Poly n)) (x : Fin n → ℝ) :
    eval (sumPoly (pairSums ps)) x = eval (sumPoly ps) x := by
  induction ps using pairSums.induct with
  | case1 => rfl
  | case2 p => rfl
  | case3 p q ps ih =>
    simpa [pairSums, eval_sumPoly, eval_normalize, eval_add, add_assoc] using ih
theorem eval_balancedAux {n : ℕ} (fuel : ℕ) (ps : List (Poly n)) (x : Fin n → ℝ) :
    eval (balancedAux fuel ps) x = eval (sumPoly ps) x := by
  induction fuel generalizing ps with
  | zero => exact eval_normalize _ _
  | succ fuel ih =>
    cases ps with
    | nil => rfl
    | cons p ps =>
      cases ps with
      | nil => simp [balancedAux, eval_normalize, eval_sumPoly]
      | cons q ps =>
        rw [balancedAux, ih, eval_pairSums] <;> simp
theorem eval_balancedSum {n : ℕ} (ps : List (Poly n)) (x : Fin n → ℝ) :
    eval (balancedSum ps) x = eval (sumPoly ps) x := by
  exact eval_balancedAux ps.length ps x
theorem eval_mulNF {n : ℕ} (p q : Poly n) (x : Fin n → ℝ) :
    eval (mulNF p q) x = eval p x * eval q x := by
  simp [mulNF, eval_normalize, eval_mul]
theorem eval_prodNF {n : ℕ} (ps : List (Poly n)) (x : Fin n → ℝ) :
    eval (prodNF ps) x = eval (prodPoly ps) x := by
  induction ps with
  | nil => rfl
  | cons p ps ih =>
    change eval (mulNF p (prodNF ps)) x = eval (mul p (prodPoly ps)) x
    rw [eval_mulNF, eval_mul, ih]
theorem eval_pFromNF {n : ℕ} (xs : Fin 11 → Poly n) (x : Fin n → ℝ) :
    eval (pFromNF xs) x = eval (pFrom xs) x := by
  simp only [pFromNF, pFrom, eval_balancedSum, eval_sumPoly, List.map_map,
    Function.comp_def, eval_mulNF, eval_mul, eval_prodNF]
theorem eval_hFromNF {n : ℕ} (xs : Fin 11 → Poly n) (x : Fin n → ℝ) :
    eval (hFromNF xs) x = eval (hFrom xs) x := by
  simp only [hFromNF, hFrom, eval_normalize, eval_scale, eval_balancedSum,
    eval_sumPoly, List.flatMap_def, List.map_flatten, List.map_map,
    Function.comp_def, eval_mulNF, eval_mul, eval_prodNF]
theorem eval_derivativeTarget (L : ℤ) (x : Fin 11 → ℝ) :
    eval (derivativeTarget L) x = eval (scale L (mul ellPoly hPoly)) x := by
  simp only [derivativeTarget, eval_normalize, eval_scale, eval_mulNF,
    eval_mul, hNF, hPoly, eval_hFromNF]
theorem eval_boundaryTarget (m : Multiplier) (x : Fin 10 → ℝ) :
    eval (boundaryTarget m) x = eval (mul (multiplierPoly m) bPoly) x := by
  simp only [boundaryTarget, eval_mulNF, eval_mul, bNF, bPoly, eval_pFromNF]
theorem eval_derivativeSumNF (bs : List DerivativeBlock) (x : Fin 11 → ℝ) :
    eval (derivativeSumNF bs) x = eval (derivativeSum bs) x := by
  simp only [derivativeSumNF, derivativeSum, eval_balancedSum, eval_sumPoly,
    List.map_map, Function.comp_def, eval_normalize, eval_permute]
theorem eval_boundarySumNF (bs : List (Block 10)) (x : Fin 10 → ℝ) :
    eval (boundarySumNF bs) x = eval (boundarySum bs) x := by
  simp only [boundarySumNF, boundarySum, eval_balancedSum, eval_sumPoly,
    List.map_map, Function.comp_def, eval_normalize]

theorem eval_derivativeCachedSum (ws : List DerivativeWitness)
    (hw : ∀ w ∈ ws, derivativeLeafCheck w = true) (x : Fin 11 → ℝ) :
    eval (derivativeCachedSum ws) x = eval (derivativeSum (ws.map fun w => w.block)) x := by
  simp only [derivativeCachedSum, derivativeSum, eval_balancedSum, eval_sumPoly,
    List.map_map, Function.comp_def, eval_normalize, eval_permute]
  congr 1
  apply List.map_congr_left
  intro r hr
  congr 1
  apply List.map_congr_left
  intro w hw'
  exact (checkEq_sound _ _ (hw w hw') _).symm
theorem eval_boundaryCachedSum (ws : List BoundaryWitness)
    (hw : ∀ w ∈ ws, boundaryLeafCheck w = true) (x : Fin 10 → ℝ) :
    eval (boundaryCachedSum ws) x = eval (boundarySum (ws.map fun w => w.block)) x := by
  simp only [boundaryCachedSum, boundarySum, eval_balancedSum, eval_sumPoly,
    List.map_map, Function.comp_def]
  congr 1
  apply List.map_congr_left
  intro w hw'
  exact (checkEq_sound _ _ (hw w hw') _).symm

lemma H_nonneg_of_eval (L : ℤ) (hL : 0 < L) (x : Fin 11 → ℝ)
    (hx : VascN11.nonnegative11 x)
    (hn : 0 ≤ eval (scale L (mul ellPoly hPoly)) x) : 0 ≤ VascN11.H x := by
  by_cases hzero : x = 0
  · subst x
    exact le_of_eq H_zero.symm
  have hsum : 0 < ∑ i, x i := by
    apply Finset.sum_pos' (fun i _ => hx i)
    obtain ⟨i, hi⟩ : ∃ i, x i ≠ 0 := by
      by_contra! h
      exact hzero (funext h)
    exact ⟨i, Finset.mem_univ _, lt_of_le_of_ne (hx i) (Ne.symm hi)⟩
  simp only [eval_scale, eval_mul, eval_ellPoly, eval_hPoly, ← H_eq_explicitH] at hn
  have hLp : (0 : ℝ) < L := by exact_mod_cast hL
  exact nonneg_of_mul_nonneg_right (nonneg_of_mul_nonneg_right hn hLp) hsum

lemma boundary_nonneg_of_eval (m : Multiplier) (hm : multiplierCheck m = true)
    (x : Fin 10 → ℝ) (hx : VascN11.nonnegative10 x)
    (hn : 0 ≤ eval (mul (multiplierPoly m) bPoly) x) : 0 ≤ VascN11.boundaryP x := by
  by_cases hzero : x = 0
  · subst x
    exact le_of_eq boundaryP_zero.symm
  simp only [eval_mul, eval_bPoly] at hn
  exact nonneg_of_mul_nonneg_right hn (multiplier_pos m hm x hx hzero)

theorem translationDerivative_nonneg_of_staged_checks (L : ℤ) (hL : 0 < L)
    (bs : List DerivativeBlock) (hb : ∀ b ∈ bs, blockCheck b.toBlock = true)
    (hi : derivativeCheckNF L bs = true) (x : Fin 11 → ℝ)
    (hx : VascN11.nonnegative11 x) : 0 ≤ VascN11.H x := by
  apply H_nonneg_of_eval L hL x hx
  have he := checkEq_sound _ _ hi x
  rw [eval_derivativeTarget, eval_derivativeSumNF] at he
  rw [he]
  exact derivativeSum_nonneg bs hb x hx
theorem boundaryP_nonneg_of_staged_checks (m : Multiplier) (hm : multiplierCheck m = true)
    (bs : List (Block 10)) (hb : ∀ b ∈ bs, blockCheck b = true)
    (hi : boundaryCheckNF m bs = true) (x : Fin 10 → ℝ)
    (hx : VascN11.nonnegative10 x) : 0 ≤ VascN11.boundaryP x := by
  apply boundary_nonneg_of_eval m hm x hx
  have he := checkEq_sound _ _ hi x
  rw [eval_boundaryTarget, eval_boundarySumNF] at he
  rw [he]
  exact boundarySum_nonneg bs hb x hx

theorem translationDerivative_nonneg_of_cached_checks (L : ℤ) (hL : 0 < L)
    (ws : List DerivativeWitness) (hw : ∀ w ∈ ws, derivativeLeafCheck w = true)
    (hb : ∀ w ∈ ws, blockCheck w.block.toBlock = true)
    (t : DerivativeTargetWitness) (ht : derivativeTargetCheck t = true)
    (hi : derivativeCachedCheck L t ws = true) (x : Fin 11 → ℝ)
    (hx : VascN11.nonnegative11 x) : 0 ≤ VascN11.H x := by
  apply H_nonneg_of_eval L hL x hx
  obtain ⟨hel, heh⟩ := Bool.and_eq_true_iff.mp ht
  have hel' := checkEq_sound _ _ hel x
  have heh' := checkEq_sound _ _ heh x
  have he := checkEq_sound _ _ hi x
  change eval (normalize (scale L (mulNF t.ell t.h))) x =
    eval (derivativeCachedSum ws) x at he
  simp only [eval_normalize, eval_scale, eval_mulNF] at he
  rw [← hel', ← heh'] at he
  rw [hNF, eval_hFromNF] at he
  have hn := derivativeSum_nonneg (ws.map fun w => w.block) (by
    intro b hb'
    obtain ⟨w, hw', rfl⟩ := List.mem_map.mp hb'
    exact hb w hw') x hx
  rw [← eval_derivativeCachedSum ws hw x, ← he] at hn
  simpa only [eval_scale, eval_mul, hPoly] using hn
theorem boundaryP_nonneg_of_cached_checks (m : Multiplier) (hm : multiplierCheck m = true)
    (ws : List BoundaryWitness) (hw : ∀ w ∈ ws, boundaryLeafCheck w = true)
    (hb : ∀ w ∈ ws, blockCheck w.block = true)
    (t : BoundaryTargetWitness) (ht : boundaryTargetCheck m t = true)
    (hi : boundaryCachedCheck t ws = true) (x : Fin 10 → ℝ)
    (hx : VascN11.nonnegative10 x) : 0 ≤ VascN11.boundaryP x := by
  apply boundary_nonneg_of_eval m hm x hx
  obtain ⟨hem, heb⟩ := Bool.and_eq_true_iff.mp ht
  have hem' := checkEq_sound _ _ hem x
  have heb' := checkEq_sound _ _ heb x
  have he := checkEq_sound _ _ hi x
  change eval (mulNF t.multiplier t.boundary) x = eval (boundaryCachedSum ws) x at he
  rw [eval_mulNF, ← hem', ← heb', bNF, eval_pFromNF] at he
  have hn := boundarySum_nonneg (ws.map fun w => w.block) (by
    intro b hb'
    obtain ⟨w, hw', rfl⟩ := List.mem_map.mp hb'
    exact hb w hw') x hx
  rw [← eval_boundaryCachedSum ws hw x, ← he] at hn
  simpa only [eval_mul, bPoly] using hn

end VascCertificate.Staged
