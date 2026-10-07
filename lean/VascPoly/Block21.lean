import VascTyped.Link21
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis21 : Array Int := (parseInts cert21.basisText).getD #[]
def mask21 : Array Int := (parseInts cert21.anchorText).getD #[]
def block21 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u21
  R := Gram.readMatrix 70 r21
  C := Gram.readMatrix 70 c21
  J := Gram.readMatrix 70 j21
  E := fun a j => (basis21[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask21[j.val]?.getD 0).toNat
  anchor := fun j => (basis21[j.val]?.getD 0).toNat
}
theorem block21_check : blockCheck block21.toBlock = true := block21_typed
end VascDerivativePolynomial
