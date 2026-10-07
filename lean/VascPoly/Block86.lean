import VascTyped.Link86
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis86 : Array Int := (parseInts cert86.basisText).getD #[]
def mask86 : Array Int := (parseInts cert86.anchorText).getD #[]
def block86 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u86
  R := Gram.readMatrix 35 r86
  C := Gram.readMatrix 35 c86
  J := Gram.readMatrix 35 j86
  E := fun a j => (basis86[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask86[j.val]?.getD 0).toNat
  anchor := fun j => (basis86[j.val]?.getD 0).toNat
}
theorem block86_check : blockCheck block86.toBlock = true := block86_typed
end VascDerivativePolynomial
