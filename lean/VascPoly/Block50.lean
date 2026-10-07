import VascTyped.Link50
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis50 : Array Int := (parseInts cert50.basisText).getD #[]
def mask50 : Array Int := (parseInts cert50.anchorText).getD #[]
def block50 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u50
  R := Gram.readMatrix 70 r50
  C := Gram.readMatrix 70 c50
  J := Gram.readMatrix 70 j50
  E := fun a j => (basis50[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask50[j.val]?.getD 0).toNat
  anchor := fun j => (basis50[j.val]?.getD 0).toNat
}
theorem block50_check : blockCheck block50.toBlock = true := block50_typed
end VascDerivativePolynomial
