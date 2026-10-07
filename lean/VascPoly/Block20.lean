import VascTyped.Link20
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis20 : Array Int := (parseInts cert20.basisText).getD #[]
def mask20 : Array Int := (parseInts cert20.anchorText).getD #[]
def block20 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u20
  R := Gram.readMatrix 121 r20
  C := Gram.readMatrix 121 c20
  J := Gram.readMatrix 121 j20
  E := fun a j => (basis20[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask20[j.val]?.getD 0).toNat
  anchor := fun j => (basis20[j.val]?.getD 0).toNat
}
theorem block20_check : blockCheck block20.toBlock = true := block20_typed
end VascDerivativePolynomial
