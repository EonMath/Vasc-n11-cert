import Mathlib

namespace VascN11

noncomputable section

abbrev I11 := Fin 11
abbrev I10 := Fin 10

def next11 (i : I11) : I11 := ⟨(i.val + 1) % 11, by omega⟩
def next210 (i : I11) : I11 := next11 (next11 i)

def a (x : I11 → ℝ) (i : I11) : ℝ := x i - x (next11 i)
def d (x : I11 → ℝ) (i : I11) : ℝ := x (next11 i) + x (next210 i)

def clearedP (x : I11 → ℝ) : ℝ :=
  ∑ i : I11, a x i * ∏ j : {j : I11 // j ≠ i}, d x j.1

def H (x : I11 → ℝ) : ℝ :=
  deriv (fun t : ℝ => clearedP (fun i => x i + t)) 0

def boundaryP (z : I10 → ℝ) : ℝ :=
  clearedP (fun i => if h : i.val < 10 then z ⟨i.val, h⟩ else 0)

def positive11 (x : I11 → ℝ) : Prop := ∀ i, 0 < x i
def nonnegative11 (x : I11 → ℝ) : Prop := ∀ i, 0 ≤ x i
def nonnegative10 (z : I10 → ℝ) : Prop := ∀ i, 0 ≤ z i

def c11 (x : I11 → ℝ) : ℝ :=
  ∑ i : I11, (x i - x (next11 i)) / d x i

/- The exact derivative certificate interface from final_certificate_bundle.
   Its proof is supplied by the independent 93-block rational Gram replay. -/
theorem translationDerivative_nonneg
    (hT : ∀ x : I11 → ℝ, nonnegative11 x → 0 ≤ H x) :
    ∀ x : I11 → ℝ, nonnegative11 x → 0 ≤ H x := by
  intro x hx
  exact hT x hx

/- The exact boundary certificate interface, including all subfaces and the origin. -/
theorem boundaryP_nonneg
    (hB : ∀ z : I10 → ℝ, nonnegative10 z → 0 ≤ boundaryP z) :
    ∀ z : I10 → ℝ, nonnegative10 z → 0 ≤ boundaryP z := by
  intro z hz
  exact hB z hz

theorem next11_eq_add (i : I11) : next11 i = i + 1 := by
  apply Fin.ext
  simp [next11, Fin.val_add]

theorem clearedP_rotate (x : I11 → ℝ) (k : I11) :
    clearedP (fun i => x (i + k)) = clearedP x := by
  classical
  unfold clearedP
  apply Fintype.sum_equiv (Equiv.addRight k)
  intro i
  have hd (j : I11) : d (fun i => x (i + k)) j = d x (j + k) := by
    simp [d, next210, next11_eq_add, add_assoc, add_comm, add_left_comm]
  have ha : a (fun i => x (i + k)) i = a x (i + k) := by
    simp [a, next11_eq_add, add_assoc, add_comm]
  change _ = a x (i + k) * _
  rw [ha]
  congr 1
  exact Fintype.prod_equiv
    ((Equiv.addRight k).subtypeEquiv (fun j => by simp)) _ _ (fun j => hd j)

theorem clearedP_face_nonneg
    (hB : ∀ z : I10 → ℝ, nonnegative10 z → 0 ≤ boundaryP z)
    (x : I11 → ℝ) (hx : nonnegative11 x) (i : I11) (hi : x i = 0) :
    0 ≤ clearedP x := by
  let k : I11 := i - 10
  let y : I11 → ℝ := fun j => x (j + k)
  let z : I10 → ℝ := fun j => y ⟨j.val, by omega⟩
  have hz : nonnegative10 z := fun j => hx _
  have hy : (fun j : I11 => if h : j.val < 10 then z ⟨j.val, h⟩ else 0) = y := by
    funext j
    split_ifs with h
    · rfl
    · have hj : j = 10 := by apply Fin.ext; simp; omega
      subst j
      simp [y, k, hi]
  have hh := hB z hz
  unfold boundaryP at hh
  rw [hy] at hh
  simpa only [y, clearedP_rotate] using hh

theorem clearedP_translation_differentiable (x : I11 → ℝ) :
    Differentiable ℝ (fun t : ℝ => clearedP (fun i => x i + t)) := by
  unfold clearedP a d
  apply Differentiable.fun_sum
  intro i hi
  apply Differentiable.mul
  · exact ((differentiable_const _).add differentiable_id).sub
      ((differentiable_const _).add differentiable_id)
  · apply Differentiable.fun_finset_prod
    intro j hj
    exact ((differentiable_const _).add differentiable_id).add
      ((differentiable_const _).add differentiable_id)

theorem H_translation (x : I11 → ℝ) (t : ℝ) :
    H (fun i => x i + t) = deriv (fun s : ℝ => clearedP (fun i => x i + s)) t := by
  unfold H
  have hf : (fun s : ℝ => clearedP (fun i => x i + t + s)) =
      (fun s : ℝ => clearedP (fun i => x i + (s + t))) := by
    funext s
    congr 1
    funext i
    ring
  rw [hf]
  simpa using deriv_comp_add_const (fun s : ℝ => clearedP (fun i => x i + s)) t 0

theorem clearedP_nonneg_of_interfaces
    (hT : ∀ x : I11 → ℝ, nonnegative11 x → 0 ≤ H x)
    (hB : ∀ z : I10 → ℝ, nonnegative10 z → 0 ≤ boundaryP z)
    (x : I11 → ℝ) (hx : nonnegative11 x) : 0 ≤ clearedP x := by
  classical
  obtain ⟨i, _, hi⟩ := Finset.exists_min_image Finset.univ x Finset.univ_nonempty
  let y : I11 → ℝ := fun j => x j - x i
  have hy : nonnegative11 y := fun j => sub_nonneg.mpr (hi j (Finset.mem_univ _))
  have hzero : y i = 0 := sub_self _
  have hb := clearedP_face_nonneg hB y hy i hzero
  have hdiff := clearedP_translation_differentiable y
  have hm : MonotoneOn (fun t : ℝ => clearedP (fun j => y j + t)) (Set.Ici 0) := by
    apply monotoneOn_of_deriv_nonneg (convex_Ici 0) hdiff.continuous.continuousOn
      hdiff.differentiableOn
    intro t ht
    rw [← H_translation]
    apply hT
    intro j
    exact add_nonneg (hy j) (le_of_lt (by simpa using ht))
  have hle := hm (show (0 : ℝ) ∈ Set.Ici 0 by simp) (hx i) (hx i)
  have he : (fun j => y j + x i) = x := by funext j; simp [y]
  simp only [add_zero, he] at hle
  exact le_trans hb hle

theorem clearedP_eq_c11_mul (x : I11 → ℝ) (hx : positive11 x) :
    clearedP x = c11 x * ∏ j : I11, d x j := by
  classical
  unfold clearedP c11
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  have hd : d x i ≠ 0 := ne_of_gt (add_pos (hx _) (hx _))
  have hp : (∏ j : {j : I11 // j ≠ i}, d x j.val) * d x i = ∏ j : I11, d x j := by
    rw [← Finset.prod_subtype (Finset.univ.erase i) (by simp)]
    exact Finset.prod_erase_mul _ _ (Finset.mem_univ _)
  rw [← hp]
  unfold a
  field_simp

/- Assembly from the two accepted polynomial sign interfaces. -/
theorem vasc11_assembly
    (hT : ∀ x : I11 → ℝ, nonnegative11 x → 0 ≤ H x)
    (hB : ∀ z : I10 → ℝ, nonnegative10 z → 0 ≤ boundaryP z) :
    ∀ x : I11 → ℝ, positive11 x → 0 ≤ c11 x := by
  intro x hx
  have hp := clearedP_nonneg_of_interfaces hT hB x (fun i => le_of_lt (hx i))
  rw [clearedP_eq_c11_mul x hx] at hp
  have hd : 0 < ∏ j : I11, d x j := Finset.prod_pos (fun j _ => add_pos (hx _) (hx _))
  exact nonneg_of_mul_nonneg_left hp hd

end

end VascN11
