import VascTyped.Link85
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis85 : Array Int := (parseInts cert85.basisText).getD #[]
def mask85 : Array Int := (parseInts cert85.anchorText).getD #[]
def block85 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u85
  R := Gram.readMatrix 35 r85
  C := Gram.readMatrix 35 c85
  J := Gram.readMatrix 35 j85
  E := fun a j => (basis85[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask85[j.val]?.getD 0).toNat
  anchor := fun j => (basis85[j.val]?.getD 0).toNat
}
theorem block85_check : blockCheck block85.toBlock = true := block85_typed
end VascDerivativePolynomial
