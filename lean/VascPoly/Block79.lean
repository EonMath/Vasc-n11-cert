import VascTyped.Link79
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis79 : Array Int := (parseInts cert79.basisText).getD #[]
def mask79 : Array Int := (parseInts cert79.anchorText).getD #[]
def block79 : DerivativeBlock := {
  q := 33
  U := Gram.readMatrix 33 u79
  R := Gram.readMatrix 33 r79
  C := Gram.readMatrix 33 c79
  J := Gram.readMatrix 33 j79
  E := fun a j => (basis79[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask79[j.val]?.getD 0).toNat
  anchor := fun j => (basis79[j.val]?.getD 0).toNat
}
theorem block79_check : blockCheck block79.toBlock = true := block79_typed
end VascDerivativePolynomial
