import VascTyped.Link59
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis59 : Array Int := (parseInts cert59.basisText).getD #[]
def mask59 : Array Int := (parseInts cert59.anchorText).getD #[]
def block59 : DerivativeBlock := {
  q := 76
  U := Gram.readMatrix 76 u59
  R := Gram.readMatrix 76 r59
  C := Gram.readMatrix 76 c59
  J := Gram.readMatrix 76 j59
  E := fun a j => (basis59[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask59[j.val]?.getD 0).toNat
  anchor := fun j => (basis59[j.val]?.getD 0).toNat
}
theorem block59_check : blockCheck block59.toBlock = true := block59_typed
end VascDerivativePolynomial
