import Mathlib.LinearAlgebra.Matrix.Gershgorin
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Tactic

namespace VascCertificate.Gram
open scoped BigOperators Matrix
abbrev ZMat (q : ℕ) := Matrix (Fin q) (Fin q) ℤ
abbrev RMat (q : ℕ) := Matrix (Fin q) (Fin q) ℝ

def cast {q : ℕ} (A : ZMat q) : RMat q := fun i j => (A i j : ℝ)
def quad {q : ℕ} (A : RMat q) (v : Fin q → ℝ) : ℝ := ∑ i, ∑ j, A i j * v i * v j
def strictDDZ {q : ℕ} (J : ZMat q) : Prop := ∀ i, (∑ j ∈ Finset.univ.erase i, |J i j|) < J i i
instance {q : ℕ} (J : ZMat q) : Decidable (strictDDZ J) := inferInstanceAs (Decidable (∀ i, (∑ j ∈ Finset.univ.erase i, |J i j|) < J i i))

/-- Lower triangular U stores each mixed coefficient once; upper entries are ignored. -/
def tri {q : ℕ} (U : ZMat q) (v : Fin q → ℝ) : ℝ :=
  ∑ a, ∑ b ∈ Finset.univ.filter (fun b => b ≤ a), (U a b : ℝ) * v a * v b
def fromTri {q : ℕ} (U : ZMat q) : ZMat q := fun a b =>
  if a = b then 2 * U a b else if b < a then U a b else U b a

def readMatrix (q : ℕ) (data : Array ℤ) : ZMat q := fun i j => data[i.val * q + j.val]?.getD 0
def checkMatrix {q : ℕ} (A R : ZMat q) : Bool :=
  decide ((∀ i j, A i j = A j i) ∧ strictDDZ (R * A * R.transpose))
def checkTri (q : ℕ) (u r : Array ℤ) : Bool :=
  decide (u.size = q * q ∧ r.size = q * q) &&
    checkMatrix (fromTri (readMatrix q u)) (readMatrix q r)

theorem intMatrix_mul_cast {q : ℕ} (A R : ZMat q) : cast (A * R) = cast A * cast R := by
  ext i j
  simp [cast, Matrix.mul_apply, Int.cast_sum, Int.cast_mul]
lemma quad_dot {q : ℕ} (A : RMat q) (v : Fin q → ℝ) :
    quad A v = star v ⬝ᵥ (A *ᵥ v) := by
  simp only [quad, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
    Finset.mul_sum]
  congr 1
  ext i
  congr 1
  ext j
  ring

lemma eigen_ball {q : ℕ} (J : RMat q) (hJ : J.IsHermitian) (i : Fin q) :
    ∃ k, |J k k - hJ.eigenvalues i| ≤ ∑ j ∈ Finset.univ.erase k, |J k j| := by
  have he : Module.End.HasEigenvalue (Matrix.toLin' J) (hJ.eigenvalues i) := by
    apply Module.End.HasEigenvalue.of_mem_spectrum
    change hJ.eigenvalues i ∈ spectrum ℝ (Matrix.toLinAlgEquiv' J)
    rw [AlgEquiv.spectrum_eq]
    exact hJ.eigenvalues_mem_spectrum_real i
  obtain ⟨k, hk⟩ := eigenvalue_mem_ball he
  exact ⟨k, by simpa [Metric.mem_closedBall, Real.dist_eq, abs_sub_comm] using hk⟩

lemma dd_posDef {q : ℕ} (J : RMat q) (hs : ∀ i j, J i j = J j i)
    (hd : ∀ i, (∑ j ∈ Finset.univ.erase i, |J i j|) < J i i) : J.PosDef := by
  have hJ : J.IsHermitian := by ext i j; simpa using hs j i
  apply hJ.posDef_iff_eigenvalues_pos.mpr
  intro i
  obtain ⟨k, hk⟩ := eigen_ball J hJ i
  have := le_abs_self (J k k - hJ.eigenvalues i)
  have := hd k
  linarith

theorem quad_congruence {q : ℕ} (A R : RMat q) (v : Fin q → ℝ) :
    quad (R * A * R.transpose) v = quad A (R.transpose *ᵥ v) := by
  simp only [quad_dot, star_trivial, ← Matrix.mulVec_mulVec]
  rw [Matrix.dotProduct_mulVec, Matrix.mulVec_transpose]

theorem symmetric_dd_quad_nonneg {q : ℕ} (J : RMat q)
    (hs : ∀ i j, J i j = J j i)
    (hd : ∀ i, (∑ j ∈ Finset.univ.erase i, |J i j|) ≤ J i i)
    (v : Fin q → ℝ) : 0 ≤ quad J v := by
  have hJ : J.IsHermitian := by ext i j; simpa using hs j i
  have hp : J.PosSemidef := hJ.posSemidef_iff_eigenvalues_nonneg.mpr (by
    intro i
    change 0 ≤ hJ.eigenvalues i
    obtain ⟨k, hk⟩ := eigen_ball J hJ i
    have := le_abs_self (J k k - hJ.eigenvalues i)
    have := hd k
    linarith)
  rw [quad_dot]
  exact hp.dotProduct_mulVec_nonneg v
theorem strictDD_det_ne_zero {q : ℕ} (J : ZMat q) (hd : strictDDZ J) : (cast J).det ≠ 0 := by
  apply det_ne_zero_of_sum_row_lt_diag
  intro i
  have hh : (∑ j ∈ Finset.univ.erase i, |cast J i j|) < cast J i i := by
    dsimp [cast]
    exact_mod_cast hd i
  simpa only [Real.norm_eq_abs] using lt_of_lt_of_le hh (le_abs_self _)
/-- Full source conclusion: strict positivity on every nonzero real vector. -/
theorem congruence_strictDD_quad_pos {q : ℕ} (A R : ZMat q)
    (hs : ∀ i j, A i j = A j i) (hd : strictDDZ (R * A * R.transpose))
    (v : Fin q → ℝ) (hv : v ≠ 0) : 0 < quad (cast A) v := by
  have hc : cast (R * A * R.transpose) = cast R * cast A * (cast R).transpose := by
    simp only [intMatrix_mul_cast]; rfl
  have hsym : (cast A).IsHermitian := by
    ext i j
    simpa [cast] using congrArg (fun z : ℤ => (z : ℝ)) (hs j i)
  have hcon : (cast (R * A * R.transpose)).IsHermitian := by
    rw [hc]
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.isHermitian_mul_mul_conjTranspose (cast R) hsym
  have hp : (cast (R * A * R.transpose)).PosDef := by
    apply dd_posDef
    · intro i j
      have := congrFun (congrFun hcon j) i
      simpa using this
    · intro i
      dsimp [cast]
      exact_mod_cast hd i
  have hdet := strictDD_det_ne_zero _ hd
  rw [hc, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose] at hdet
  have hr : (cast R).det ≠ 0 := by intro hz; simp [hz] at hdet
  have hu : IsUnit (cast R) := (Matrix.isUnit_iff_isUnit_det _).mpr (isUnit_iff_ne_zero.mpr hr)
  have ha : (cast A).PosDef := (Matrix.IsUnit.posDef_star_right_conjugate_iff hu).mp (by
    simpa only [hc, Matrix.star_eq_conjTranspose, Matrix.conjTranspose_eq_transpose_of_trivial] using hp)
  rw [quad_dot]
  exact ha.dotProduct_mulVec_pos hv
theorem congruence_strictDD_quad_nonneg {q : ℕ} (A R : ZMat q)
    (hs : ∀ i j, A i j = A j i) (hd : strictDDZ (R * A * R.transpose))
    (v : Fin q → ℝ) : 0 ≤ quad (cast A) v := by
  by_cases hv : v = 0
  · subst v; simp [quad]
  · exact (congruence_strictDD_quad_pos A R hs hd v hv).le
theorem quad_twice_tri {q : ℕ} (U : ZMat q) (v : Fin q → ℝ) :
    quad (cast (fromTri U)) v = 2 * tri U v := by
  let L : RMat q := fun a b => if b ≤ a then (U a b : ℝ) else 0
  have hmat : cast (fromTri U) = L + L.transpose := by
    ext a b
    simp only [cast, fromTri, Matrix.add_apply, Matrix.transpose_apply, L]
    by_cases hab : a = b
    · subst b; simp; ring
    · by_cases hba : b < a
      · have hn : ¬a ≤ b := by omega
        simp [hab, hba, le_of_lt hba, hn]
      · have hab' : a < b := by omega
        have hn : ¬b ≤ a := by omega
        simp [hab, hba, hn, le_of_lt hab']
  have hadd : quad (L + L.transpose) v = quad L v + quad L.transpose v := by
    simp [quad, add_mul, Finset.sum_add_distrib]
  have htrans : quad L.transpose v = quad L v := by
    unfold quad
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    simp only [Matrix.transpose_apply]
    ring
  have hl : quad L v = tri U v := by
    simp only [quad, tri, L, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro a _
    apply Finset.sum_congr rfl
    intro b _
    split_ifs <;> simp
  rw [hmat, hadd, htrans, hl]
  ring
theorem checkMatrix_sound {q : ℕ} (A R : ZMat q) (h : checkMatrix A R = true)
    (v : Fin q → ℝ) : 0 ≤ quad (cast A) v := by
  have hh := of_decide_eq_true h
  exact congruence_strictDD_quad_nonneg A R hh.1 hh.2 v
theorem tri_nonneg_of_check (q : ℕ) (u r : Array ℤ) (h : checkTri q u r = true)
    (v : Fin q → ℝ) : 0 ≤ tri (readMatrix q u) v := by
  have hh : checkMatrix (fromTri (readMatrix q u)) (readMatrix q r) = true := by
    exact (Bool.and_eq_true_iff.mp h).2
  have hn := checkMatrix_sound _ _ hh v
  rw [quad_twice_tri] at hn
  linarith
/-- Intermediate matrices are untrusted witnesses; every entry equality is checked. -/
def checkMatrixWitness {q : ℕ} (A R C J : ZMat q) : Bool :=
  decide ((∀ i j, A i j = A j i) ∧
    (∀ i j, C i j = (R * A) i j) ∧
    (∀ i j, J i j = (C * R.transpose) i j) ∧ strictDDZ J)
theorem checkMatrixWitness_to_checkMatrix {q : ℕ} (A R C J : ZMat q)
    (h : checkMatrixWitness A R C J = true) : checkMatrix A R = true := by
  obtain ⟨hs, hc, hj, hd⟩ := of_decide_eq_true h
  have hc' : C = R * A := by ext i j; exact hc i j
  have hj' : J = C * R.transpose := by ext i j; exact hj i j
  subst J C
  exact decide_eq_true ⟨hs, hd⟩
theorem checkMatrixWitness_sound {q : ℕ} (A R C J : ZMat q)
    (h : checkMatrixWitness A R C J = true) (v : Fin q → ℝ) :
    0 ≤ quad (cast A) v := by
  exact checkMatrix_sound A R (checkMatrixWitness_to_checkMatrix A R C J h) v
end VascCertificate.Gram
