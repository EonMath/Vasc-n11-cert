import VascTyped.Link08
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis8 : Array Int := (parseInts cert8.basisText).getD #[]
def mask8 : Array Int := (parseInts cert8.anchorText).getD #[]
def block8 : DerivativeBlock := {
  q := 118
  U := Gram.readMatrix 118 u8
  R := Gram.readMatrix 118 r8
  C := Gram.readMatrix 118 c8
  J := Gram.readMatrix 118 j8
  E := fun a j => (basis8[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask8[j.val]?.getD 0).toNat
  anchor := fun j => (basis8[j.val]?.getD 0).toNat
}
theorem block8_check : blockCheck block8.toBlock = true := block8_typed
end VascDerivativePolynomial
