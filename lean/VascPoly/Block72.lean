import VascTyped.Link72
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis72 : Array Int := (parseInts cert72.basisText).getD #[]
def mask72 : Array Int := (parseInts cert72.anchorText).getD #[]
def block72 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u72
  R := Gram.readMatrix 35 r72
  C := Gram.readMatrix 35 c72
  J := Gram.readMatrix 35 j72
  E := fun a j => (basis72[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask72[j.val]?.getD 0).toNat
  anchor := fun j => (basis72[j.val]?.getD 0).toNat
}
theorem block72_check : blockCheck block72.toBlock = true := block72_typed
end VascDerivativePolynomial
