import VascTyped.Link05
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis5 : Array Int := (parseInts cert5.basisText).getD #[]
def mask5 : Array Int := (parseInts cert5.anchorText).getD #[]
def block5 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u5
  R := Gram.readMatrix 121 r5
  C := Gram.readMatrix 121 c5
  J := Gram.readMatrix 121 j5
  E := fun a j => (basis5[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask5[j.val]?.getD 0).toNat
  anchor := fun j => (basis5[j.val]?.getD 0).toNat
}
theorem block5_check : blockCheck block5.toBlock = true := block5_typed
end VascDerivativePolynomial
