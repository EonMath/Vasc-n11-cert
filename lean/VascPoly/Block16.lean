import VascTyped.Link16
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis16 : Array Int := (parseInts cert16.basisText).getD #[]
def mask16 : Array Int := (parseInts cert16.anchorText).getD #[]
def block16 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u16
  R := Gram.readMatrix 121 r16
  C := Gram.readMatrix 121 c16
  J := Gram.readMatrix 121 j16
  E := fun a j => (basis16[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask16[j.val]?.getD 0).toNat
  anchor := fun j => (basis16[j.val]?.getD 0).toNat
}
theorem block16_check : blockCheck block16.toBlock = true := block16_typed
end VascDerivativePolynomial
