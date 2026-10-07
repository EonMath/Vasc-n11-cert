import VascTyped.Link76
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis76 : Array Int := (parseInts cert76.basisText).getD #[]
def mask76 : Array Int := (parseInts cert76.anchorText).getD #[]
def block76 : DerivativeBlock := {
  q := 36
  U := Gram.readMatrix 36 u76
  R := Gram.readMatrix 36 r76
  C := Gram.readMatrix 36 c76
  J := Gram.readMatrix 36 j76
  E := fun a j => (basis76[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask76[j.val]?.getD 0).toNat
  anchor := fun j => (basis76[j.val]?.getD 0).toNat
}
theorem block76_check : blockCheck block76.toBlock = true := block76_typed
end VascDerivativePolynomial
