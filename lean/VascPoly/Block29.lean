import VascTyped.Link29
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis29 : Array Int := (parseInts cert29.basisText).getD #[]
def mask29 : Array Int := (parseInts cert29.anchorText).getD #[]
def block29 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u29
  R := Gram.readMatrix 71 r29
  C := Gram.readMatrix 71 c29
  J := Gram.readMatrix 71 j29
  E := fun a j => (basis29[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask29[j.val]?.getD 0).toNat
  anchor := fun j => (basis29[j.val]?.getD 0).toNat
}
theorem block29_check : blockCheck block29.toBlock = true := block29_typed
end VascDerivativePolynomial
