import VascTyped.Link11
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis11 : Array Int := (parseInts cert11.basisText).getD #[]
def mask11 : Array Int := (parseInts cert11.anchorText).getD #[]
def block11 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u11
  R := Gram.readMatrix 66 r11
  C := Gram.readMatrix 66 c11
  J := Gram.readMatrix 66 j11
  E := fun a j => (basis11[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask11[j.val]?.getD 0).toNat
  anchor := fun j => (basis11[j.val]?.getD 0).toNat
}
theorem block11_check : blockCheck block11.toBlock = true := block11_typed
end VascDerivativePolynomial
