import VascTyped.Link53
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis53 : Array Int := (parseInts cert53.basisText).getD #[]
def mask53 : Array Int := (parseInts cert53.anchorText).getD #[]
def block53 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u53
  R := Gram.readMatrix 30 r53
  C := Gram.readMatrix 30 c53
  J := Gram.readMatrix 30 j53
  E := fun a j => (basis53[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask53[j.val]?.getD 0).toNat
  anchor := fun j => (basis53[j.val]?.getD 0).toNat
}
theorem block53_check : blockCheck block53.toBlock = true := block53_typed
end VascDerivativePolynomial
