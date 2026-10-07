import VascTyped.Link46
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis46 : Array Int := (parseInts cert46.basisText).getD #[]
def mask46 : Array Int := (parseInts cert46.anchorText).getD #[]
def block46 : DerivativeBlock := {
  q := 69
  U := Gram.readMatrix 69 u46
  R := Gram.readMatrix 69 r46
  C := Gram.readMatrix 69 c46
  J := Gram.readMatrix 69 j46
  E := fun a j => (basis46[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask46[j.val]?.getD 0).toNat
  anchor := fun j => (basis46[j.val]?.getD 0).toNat
}
theorem block46_check : blockCheck block46.toBlock = true := block46_typed
end VascDerivativePolynomial
