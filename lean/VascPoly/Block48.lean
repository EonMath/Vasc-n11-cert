import VascTyped.Link48
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis48 : Array Int := (parseInts cert48.basisText).getD #[]
def mask48 : Array Int := (parseInts cert48.anchorText).getD #[]
def block48 : DerivativeBlock := {
  q := 69
  U := Gram.readMatrix 69 u48
  R := Gram.readMatrix 69 r48
  C := Gram.readMatrix 69 c48
  J := Gram.readMatrix 69 j48
  E := fun a j => (basis48[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask48[j.val]?.getD 0).toNat
  anchor := fun j => (basis48[j.val]?.getD 0).toNat
}
theorem block48_check : blockCheck block48.toBlock = true := block48_typed
end VascDerivativePolynomial
