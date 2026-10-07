import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.List.Sort
import Mathlib.Data.Fintype.Pi

namespace VascCertificate.Sparse
open scoped BigOperators
abbrev Exp (n : ℕ) := Fin n → ℕ
abbrev Term (n : ℕ) := Exp n × ℤ
abbrev Poly (n : ℕ) := List (Term n)

def monEval {n : ℕ} (e : Exp n) (x : Fin n → ℝ) : ℝ := ∏ i, x i ^ e i
def eval {n : ℕ} (p : Poly n) (x : Fin n → ℝ) : ℝ :=
  (p.map fun t => (t.2 : ℝ) * monEval t.1 x).sum
def add {n : ℕ} (p q : Poly n) : Poly n := p ++ q
def scale {n : ℕ} (c : ℤ) (p : Poly n) : Poly n := p.map fun t => (t.1, c * t.2)
def neg {n : ℕ} (p : Poly n) : Poly n := scale (-1) p
def mul {n : ℕ} (p q : Poly n) : Poly n :=
  p.flatMap fun t => q.map fun u => (fun i => t.1 i + u.1 i, t.2 * u.2)
def C {n : ℕ} (c : ℤ) : Poly n := [(fun _ => 0, c)]
def X {n : ℕ} (i : Fin n) : Poly n := [(fun j => if j = i then 1 else 0, 1)]
def monomial {n : ℕ} (e : Exp n) (c : ℤ) : Poly n := [(e,c)]
def combine {n : ℕ} : Poly n → Poly n
  | [] => []
  | t :: ts => match combine ts with
    | [] => [t]
    | u :: us => if t.1 = u.1 then (t.1, t.2 + u.2) :: us else t :: u :: us
def normalize {n : ℕ} (p : Poly n) : Poly n :=
  (combine (p.mergeSort fun t u => compare (List.ofFn t.1) (List.ofFn u.1) != Ordering.gt)).filter
    fun t => t.2 != 0
def checkEq {n : ℕ} (p q : Poly n) : Bool := decide (normalize p = normalize q)

theorem monEval_zero {n : ℕ} (x : Fin n → ℝ) : monEval (fun _ => 0) x = 1 := by
  simp [monEval]
theorem monEval_add {n : ℕ} (e f : Exp n) (x : Fin n → ℝ) :
    monEval (fun i => e i + f i) x = monEval e x * monEval f x := by
  simp [monEval, pow_add, Finset.prod_mul_distrib]
theorem monEval_nonneg {n : ℕ} (e : Exp n) (x : Fin n → ℝ) (hx : ∀ i, 0 ≤ x i) :
    0 ≤ monEval e x := by
  exact Finset.prod_nonneg fun i _ => pow_nonneg (hx i) _
theorem eval_add {n : ℕ} (p q : Poly n) (x : Fin n → ℝ) :
    eval (add p q) x = eval p x + eval q x := by
  simp [eval, add, List.map_append, List.sum_append]
theorem eval_scale {n : ℕ} (c : ℤ) (p : Poly n) (x : Fin n → ℝ) :
    eval (scale c p) x = (c : ℝ) * eval p x := by
  induction p with
  | nil => simp [eval, scale]
  | cons t ts ih =>
    simp only [scale, List.map_cons, eval, List.map_cons, List.sum_cons] at *
    rw [ih, Int.cast_mul, mul_add, mul_assoc]
theorem eval_neg {n : ℕ} (p : Poly n) (x : Fin n → ℝ) : eval (neg p) x = -eval p x := by
  simp [neg, eval_scale]
theorem eval_mul {n : ℕ} (p q : Poly n) (x : Fin n → ℝ) :
    eval (mul p q) x = eval p x * eval q x := by
  induction p with
  | nil => simp [mul, eval]
  | cons t ts ih =>
    have hm : eval (q.map fun u => (fun i => t.1 i + u.1 i, t.2 * u.2)) x =
        (t.2 : ℝ) * monEval t.1 x * eval q x := by
      clear ih
      induction q with
      | nil => simp [eval]
      | cons u us ihu =>
        simp only [List.map_cons, eval, List.map_cons, List.sum_cons] at *
        rw [ihu, Int.cast_mul, monEval_add, mul_add]
        congr 1
        ac_rfl
    change eval ((q.map fun u => (fun i => t.1 i + u.1 i, t.2 * u.2)) ++ mul ts q) x = _
    rw [show ∀ a b : Poly n, eval (a ++ b) x = eval a x + eval b x from fun a b => eval_add a b x,
      hm, ih]
    simp only [eval, List.map_cons, List.sum_cons, add_mul]
theorem eval_C {n : ℕ} (c : ℤ) (x : Fin n → ℝ) : eval (C c) x = (c : ℝ) := by
  simp [eval, C, monEval_zero]
theorem eval_X {n : ℕ} (i : Fin n) (x : Fin n → ℝ) : eval (X i) x = x i := by
  simp [eval, X, monEval]
theorem eval_monomial {n : ℕ} (e : Exp n) (c : ℤ) (x : Fin n → ℝ) :
    eval (monomial e c) x = (c : ℝ) * monEval e x := by
  simp [eval, monomial]
theorem eval_perm {n : ℕ} (p q : Poly n) (h : p.Perm q) (x : Fin n → ℝ) :
    eval p x = eval q x := by
  exact (h.map _).sum_eq
theorem eval_nil {n : ℕ} (x : Fin n → ℝ) : eval [] x = 0 := by
  rfl
theorem eval_cons {n : ℕ} (t : Term n) (p : Poly n) (x : Fin n → ℝ) :
    eval (t :: p) x = (t.2 : ℝ) * monEval t.1 x + eval p x := by
  rfl
theorem eval_combine {n : ℕ} (p : Poly n) (x : Fin n → ℝ) :
    eval (combine p) x = eval p x := by
  induction p with
  | nil => rfl
  | cons t ts ih =>
    cases hc : combine ts with
    | nil => simpa [combine, hc, eval_cons, eval_nil] using ih.symm
    | cons u us =>
      by_cases he : t.1 = u.1
      · simp only [combine, hc, if_pos he]
        rw [eval_cons, Int.cast_add, add_mul, add_assoc]
        rw [he, ← eval_cons, ← hc, ih, eval_cons, he]
      · simp only [combine, hc, if_neg he]
        rw [eval_cons, ← hc, ih, eval_cons]

theorem eval_normalize {n : ℕ} (p : Poly n) (x : Fin n → ℝ) :
    eval (normalize p) x = eval p x := by
  have hf (r : Poly n) : eval (r.filter fun t => t.2 != 0) x = eval r x := by
    induction r with
    | nil => rfl
    | cons t ts ih =>
      by_cases ht : t.2 = 0
      · simp [ht, eval_cons, ih]
      · simp [ht, eval_cons, ih]
  unfold normalize
  rw [hf, eval_combine]
  exact eval_perm _ _ (List.mergeSort_perm _ _) x
theorem checkEq_sound {n : ℕ} (p q : Poly n) (h : checkEq p q = true) (x : Fin n → ℝ) :
    eval p x = eval q x := by
  have he : normalize p = normalize q := of_decide_eq_true h
  rw [← eval_normalize p x, ← eval_normalize q x, he]
def permute {n : ℕ} (σ : Equiv.Perm (Fin n)) (p : Poly n) : Poly n :=
  p.map fun t => (fun i => t.1 (σ.symm i), t.2)
theorem eval_permute {n : ℕ} (σ : Equiv.Perm (Fin n)) (p : Poly n) (x : Fin n → ℝ) :
    eval (permute σ p) x = eval p (fun i => x (σ i)) := by
  have hm (e : Exp n) : monEval (fun i => e (σ.symm i)) x = monEval e (fun i => x (σ i)) := by
    exact Fintype.prod_equiv σ.symm _ _ (fun i => by simp)
  simp only [permute, eval, List.map_map, Function.comp_def, hm]
end VascCertificate.Sparse
