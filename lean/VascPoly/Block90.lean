import VascTyped.Link90
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis90 : Array Int := (parseInts cert90.basisText).getD #[]
def mask90 : Array Int := (parseInts cert90.anchorText).getD #[]
def block90 : DerivativeBlock := {
  q := 10
  U := Gram.readMatrix 10 u90
  R := Gram.readMatrix 10 r90
  C := Gram.readMatrix 10 c90
  J := Gram.readMatrix 10 j90
  E := fun a j => (basis90[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask90[j.val]?.getD 0).toNat
  anchor := fun j => (basis90[j.val]?.getD 0).toNat
}
theorem block90_check : blockCheck block90.toBlock = true := block90_typed
end VascDerivativePolynomial
