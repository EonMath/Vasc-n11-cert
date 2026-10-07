import VascTyped.Link01
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis1 : Array Int := (parseInts cert1.basisText).getD #[]
def mask1 : Array Int := (parseInts cert1.anchorText).getD #[]
def block1 : DerivativeBlock := {
  q := 117
  U := Gram.readMatrix 117 u1
  R := Gram.readMatrix 117 r1
  C := Gram.readMatrix 117 c1
  J := Gram.readMatrix 117 j1
  E := fun a j => (basis1[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask1[j.val]?.getD 0).toNat
  anchor := fun j => (basis1[j.val]?.getD 0).toNat
}
theorem block1_check : blockCheck block1.toBlock = true := block1_typed
end VascDerivativePolynomial
