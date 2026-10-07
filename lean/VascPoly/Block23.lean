import VascTyped.Link23
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis23 : Array Int := (parseInts cert23.basisText).getD #[]
def mask23 : Array Int := (parseInts cert23.anchorText).getD #[]
def block23 : DerivativeBlock := {
  q := 68
  U := Gram.readMatrix 68 u23
  R := Gram.readMatrix 68 r23
  C := Gram.readMatrix 68 c23
  J := Gram.readMatrix 68 j23
  E := fun a j => (basis23[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask23[j.val]?.getD 0).toNat
  anchor := fun j => (basis23[j.val]?.getD 0).toNat
}
theorem block23_check : blockCheck block23.toBlock = true := block23_typed
end VascDerivativePolynomial
