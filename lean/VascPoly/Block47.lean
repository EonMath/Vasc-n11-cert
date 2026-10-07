import VascTyped.Link47
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis47 : Array Int := (parseInts cert47.basisText).getD #[]
def mask47 : Array Int := (parseInts cert47.anchorText).getD #[]
def block47 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u47
  R := Gram.readMatrix 71 r47
  C := Gram.readMatrix 71 c47
  J := Gram.readMatrix 71 j47
  E := fun a j => (basis47[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask47[j.val]?.getD 0).toNat
  anchor := fun j => (basis47[j.val]?.getD 0).toNat
}
theorem block47_check : blockCheck block47.toBlock = true := block47_typed
end VascDerivativePolynomial
