import VascTyped.Link15
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis15 : Array Int := (parseInts cert15.basisText).getD #[]
def mask15 : Array Int := (parseInts cert15.anchorText).getD #[]
def block15 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u15
  R := Gram.readMatrix 66 r15
  C := Gram.readMatrix 66 c15
  J := Gram.readMatrix 66 j15
  E := fun a j => (basis15[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask15[j.val]?.getD 0).toNat
  anchor := fun j => (basis15[j.val]?.getD 0).toNat
}
theorem block15_check : blockCheck block15.toBlock = true := block15_typed
end VascDerivativePolynomial
