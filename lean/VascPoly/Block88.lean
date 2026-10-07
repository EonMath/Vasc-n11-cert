import VascTyped.Link88
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis88 : Array Int := (parseInts cert88.basisText).getD #[]
def mask88 : Array Int := (parseInts cert88.anchorText).getD #[]
def block88 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u88
  R := Gram.readMatrix 35 r88
  C := Gram.readMatrix 35 c88
  J := Gram.readMatrix 35 j88
  E := fun a j => (basis88[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask88[j.val]?.getD 0).toNat
  anchor := fun j => (basis88[j.val]?.getD 0).toNat
}
theorem block88_check : blockCheck block88.toBlock = true := block88_typed
end VascDerivativePolynomial
