import VascTyped.Link58
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis58 : Array Int := (parseInts cert58.basisText).getD #[]
def mask58 : Array Int := (parseInts cert58.anchorText).getD #[]
def block58 : DerivativeBlock := {
  q := 72
  U := Gram.readMatrix 72 u58
  R := Gram.readMatrix 72 r58
  C := Gram.readMatrix 72 c58
  J := Gram.readMatrix 72 j58
  E := fun a j => (basis58[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask58[j.val]?.getD 0).toNat
  anchor := fun j => (basis58[j.val]?.getD 0).toNat
}
theorem block58_check : blockCheck block58.toBlock = true := block58_typed
end VascDerivativePolynomial
