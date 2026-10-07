import VascPoly.Witnesses
import VascPoly.TargetLink
import VascPoly.CachedIdentity
namespace VascDerivativePolynomial
open VascCertificate.Staged
theorem cached_identity_leafWitnesses :
    derivativeCachedCheck 2000000000000 targetData leafWitnesses = true := cached_identity
end VascDerivativePolynomial
#print axioms VascDerivativePolynomial.cached_identity_leafWitnesses
#print axioms VascDerivativePolynomial.targetData_checked
