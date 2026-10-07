import VascTyped.Link61
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis61 : Array Int := (parseInts cert61.basisText).getD #[]
def mask61 : Array Int := (parseInts cert61.anchorText).getD #[]
def block61 : DerivativeBlock := {
  q := 36
  U := Gram.readMatrix 36 u61
  R := Gram.readMatrix 36 r61
  C := Gram.readMatrix 36 c61
  J := Gram.readMatrix 36 j61
  E := fun a j => (basis61[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask61[j.val]?.getD 0).toNat
  anchor := fun j => (basis61[j.val]?.getD 0).toNat
}
theorem block61_check : blockCheck block61.toBlock = true := block61_typed
end VascDerivativePolynomial
