import VascTyped.Link74
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis74 : Array Int := (parseInts cert74.basisText).getD #[]
def mask74 : Array Int := (parseInts cert74.anchorText).getD #[]
def block74 : DerivativeBlock := {
  q := 33
  U := Gram.readMatrix 33 u74
  R := Gram.readMatrix 33 r74
  C := Gram.readMatrix 33 c74
  J := Gram.readMatrix 33 j74
  E := fun a j => (basis74[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask74[j.val]?.getD 0).toNat
  anchor := fun j => (basis74[j.val]?.getD 0).toNat
}
theorem block74_check : blockCheck block74.toBlock = true := block74_typed
end VascDerivativePolynomial
