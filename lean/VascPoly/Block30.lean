import VascTyped.Link30
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis30 : Array Int := (parseInts cert30.basisText).getD #[]
def mask30 : Array Int := (parseInts cert30.anchorText).getD #[]
def block30 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u30
  R := Gram.readMatrix 30 r30
  C := Gram.readMatrix 30 c30
  J := Gram.readMatrix 30 j30
  E := fun a j => (basis30[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask30[j.val]?.getD 0).toNat
  anchor := fun j => (basis30[j.val]?.getD 0).toNat
}
theorem block30_check : blockCheck block30.toBlock = true := block30_typed
end VascDerivativePolynomial
