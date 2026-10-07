import VascTyped.Link84
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis84 : Array Int := (parseInts cert84.basisText).getD #[]
def mask84 : Array Int := (parseInts cert84.anchorText).getD #[]
def block84 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u84
  R := Gram.readMatrix 35 r84
  C := Gram.readMatrix 35 c84
  J := Gram.readMatrix 35 j84
  E := fun a j => (basis84[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask84[j.val]?.getD 0).toNat
  anchor := fun j => (basis84[j.val]?.getD 0).toNat
}
theorem block84_check : blockCheck block84.toBlock = true := block84_typed
end VascDerivativePolynomial
