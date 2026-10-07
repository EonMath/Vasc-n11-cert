import VascTyped.Link18
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis18 : Array Int := (parseInts cert18.basisText).getD #[]
def mask18 : Array Int := (parseInts cert18.anchorText).getD #[]
def block18 : DerivativeBlock := {
  q := 125
  U := Gram.readMatrix 125 u18
  R := Gram.readMatrix 125 r18
  C := Gram.readMatrix 125 c18
  J := Gram.readMatrix 125 j18
  E := fun a j => (basis18[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask18[j.val]?.getD 0).toNat
  anchor := fun j => (basis18[j.val]?.getD 0).toNat
}
theorem block18_check : blockCheck block18.toBlock = true := block18_typed
end VascDerivativePolynomial
