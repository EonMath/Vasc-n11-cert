import VascTyped.Link12
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis12 : Array Int := (parseInts cert12.basisText).getD #[]
def mask12 : Array Int := (parseInts cert12.anchorText).getD #[]
def block12 : DerivativeBlock := {
  q := 118
  U := Gram.readMatrix 118 u12
  R := Gram.readMatrix 118 r12
  C := Gram.readMatrix 118 c12
  J := Gram.readMatrix 118 j12
  E := fun a j => (basis12[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask12[j.val]?.getD 0).toNat
  anchor := fun j => (basis12[j.val]?.getD 0).toNat
}
theorem block12_check : blockCheck block12.toBlock = true := block12_typed
end VascDerivativePolynomial
