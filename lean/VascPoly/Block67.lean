import VascTyped.Link67
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis67 : Array Int := (parseInts cert67.basisText).getD #[]
def mask67 : Array Int := (parseInts cert67.anchorText).getD #[]
def block67 : DerivativeBlock := {
  q := 34
  U := Gram.readMatrix 34 u67
  R := Gram.readMatrix 34 r67
  C := Gram.readMatrix 34 c67
  J := Gram.readMatrix 34 j67
  E := fun a j => (basis67[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask67[j.val]?.getD 0).toNat
  anchor := fun j => (basis67[j.val]?.getD 0).toNat
}
theorem block67_check : blockCheck block67.toBlock = true := block67_typed
end VascDerivativePolynomial
