import VascTyped.Link70
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis70 : Array Int := (parseInts cert70.basisText).getD #[]
def mask70 : Array Int := (parseInts cert70.anchorText).getD #[]
def block70 : DerivativeBlock := {
  q := 31
  U := Gram.readMatrix 31 u70
  R := Gram.readMatrix 31 r70
  C := Gram.readMatrix 31 c70
  J := Gram.readMatrix 31 j70
  E := fun a j => (basis70[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask70[j.val]?.getD 0).toNat
  anchor := fun j => (basis70[j.val]?.getD 0).toNat
}
theorem block70_check : blockCheck block70.toBlock = true := block70_typed
end VascDerivativePolynomial
