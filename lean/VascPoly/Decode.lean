import VascDerivative.Checker
import VascPoly.StagedDefs
namespace VascDerivativePolynomial
open VascCertificate.Sparse
def decodePoly (n : Nat) (s : String) : Poly n :=
  let data := (VascDerivativeFull.parseInts s).getD #[]
  (List.range (data.size/(n+1))).map fun k =>
    (fun j => (data[k*(n+1)+j.val]?.getD 0).toNat, data[k*(n+1)+n]?.getD 0)
end VascDerivativePolynomial
