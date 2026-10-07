import VascTyped.Link69
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis69 : Array Int := (parseInts cert69.basisText).getD #[]
def mask69 : Array Int := (parseInts cert69.anchorText).getD #[]
def block69 : DerivativeBlock := {
  q := 32
  U := Gram.readMatrix 32 u69
  R := Gram.readMatrix 32 r69
  C := Gram.readMatrix 32 c69
  J := Gram.readMatrix 32 j69
  E := fun a j => (basis69[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask69[j.val]?.getD 0).toNat
  anchor := fun j => (basis69[j.val]?.getD 0).toNat
}
theorem block69_check : blockCheck block69.toBlock = true := block69_typed
end VascDerivativePolynomial
