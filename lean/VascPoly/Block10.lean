import VascTyped.Link10
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis10 : Array Int := (parseInts cert10.basisText).getD #[]
def mask10 : Array Int := (parseInts cert10.anchorText).getD #[]
def block10 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u10
  R := Gram.readMatrix 121 r10
  C := Gram.readMatrix 121 c10
  J := Gram.readMatrix 121 j10
  E := fun a j => (basis10[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask10[j.val]?.getD 0).toNat
  anchor := fun j => (basis10[j.val]?.getD 0).toNat
}
theorem block10_check : blockCheck block10.toBlock = true := block10_typed
end VascDerivativePolynomial
