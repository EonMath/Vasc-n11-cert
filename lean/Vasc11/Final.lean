import Vasc11.Assembly
import StagedInterfaces
import VascPoly.Witnesses
import VascPoly.TargetLink
import VascPoly.CachedIdentity
import VascBoundary.CachedCertificate

namespace VascN11

/-- For every eleven strictly positive real numbers, the forward cyclic
sum of (xᵢ - xᵢ₊₁) / (xᵢ₊₁ + xᵢ₊₂) is nonnegative.
Indices in c11 are taken modulo eleven. -/
theorem vasc11_inequality (x : Fin 11 → ℝ) (hx : ∀ i, 0 < x i) :
    0 ≤ c11 x := by
  apply vasc11_assembly ?_ ?_ x hx
  · exact VascCertificate.Staged.translationDerivative_nonneg_of_cached_checks
      2000000000000 (by norm_num)
      VascDerivativePolynomial.leafWitnesses
      VascDerivativePolynomial.leaf_checks
      VascDerivativePolynomial.matrix_checks
      VascDerivativePolynomial.targetData
      VascDerivativePolynomial.targetData_checked
      VascDerivativePolynomial.cached_identity
  · exact VascCertificate.Staged.boundaryP_nonneg_of_cached_checks
      BoundaryConcreteMultiplier.multiplier
      BoundaryConcreteMultiplier.multiplier_certified
      BoundaryCachedCertificate.witnesses
      BoundaryCachedCertificate.leaves_checked
      BoundaryCachedCertificate.matrices_checked
      BoundaryTargetCache.witness
      BoundaryTargetCache.target_checked
      BoundaryCachedCertificate.identity_checked

end VascN11
