import VascTyped.Link91
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis91 : Array Int := (parseInts cert91.basisText).getD #[]
def mask91 : Array Int := (parseInts cert91.anchorText).getD #[]
def block91 : DerivativeBlock := {
  q := 10
  U := Gram.readMatrix 10 u91
  R := Gram.readMatrix 10 r91
  C := Gram.readMatrix 10 c91
  J := Gram.readMatrix 10 j91
  E := fun a j => (basis91[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask91[j.val]?.getD 0).toNat
  anchor := fun j => (basis91[j.val]?.getD 0).toNat
}
theorem block91_check : blockCheck block91.toBlock = true := block91_typed
end VascDerivativePolynomial
