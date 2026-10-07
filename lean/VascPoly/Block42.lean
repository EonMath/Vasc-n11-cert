import VascTyped.Link42
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis42 : Array Int := (parseInts cert42.basisText).getD #[]
def mask42 : Array Int := (parseInts cert42.anchorText).getD #[]
def block42 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u42
  R := Gram.readMatrix 30 r42
  C := Gram.readMatrix 30 c42
  J := Gram.readMatrix 30 j42
  E := fun a j => (basis42[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask42[j.val]?.getD 0).toNat
  anchor := fun j => (basis42[j.val]?.getD 0).toNat
}
theorem block42_check : blockCheck block42.toBlock = true := block42_typed
end VascDerivativePolynomial
