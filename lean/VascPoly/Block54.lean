import VascTyped.Link54
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis54 : Array Int := (parseInts cert54.basisText).getD #[]
def mask54 : Array Int := (parseInts cert54.anchorText).getD #[]
def block54 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u54
  R := Gram.readMatrix 30 r54
  C := Gram.readMatrix 30 c54
  J := Gram.readMatrix 30 j54
  E := fun a j => (basis54[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask54[j.val]?.getD 0).toNat
  anchor := fun j => (basis54[j.val]?.getD 0).toNat
}
theorem block54_check : blockCheck block54.toBlock = true := block54_typed
end VascDerivativePolynomial
