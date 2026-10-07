import VascTyped.Link22
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis22 : Array Int := (parseInts cert22.basisText).getD #[]
def mask22 : Array Int := (parseInts cert22.anchorText).getD #[]
def block22 : DerivativeBlock := {
  q := 69
  U := Gram.readMatrix 69 u22
  R := Gram.readMatrix 69 r22
  C := Gram.readMatrix 69 c22
  J := Gram.readMatrix 69 j22
  E := fun a j => (basis22[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask22[j.val]?.getD 0).toNat
  anchor := fun j => (basis22[j.val]?.getD 0).toNat
}
theorem block22_check : blockCheck block22.toBlock = true := block22_typed
end VascDerivativePolynomial
