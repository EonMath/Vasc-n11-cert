import VascTyped.Link35
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis35 : Array Int := (parseInts cert35.basisText).getD #[]
def mask35 : Array Int := (parseInts cert35.anchorText).getD #[]
def block35 : DerivativeBlock := {
  q := 70
  U := Gram.readMatrix 70 u35
  R := Gram.readMatrix 70 r35
  C := Gram.readMatrix 70 c35
  J := Gram.readMatrix 70 j35
  E := fun a j => (basis35[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask35[j.val]?.getD 0).toNat
  anchor := fun j => (basis35[j.val]?.getD 0).toNat
}
theorem block35_check : blockCheck block35.toBlock = true := block35_typed
end VascDerivativePolynomial
