import VascTyped.Link55
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis55 : Array Int := (parseInts cert55.basisText).getD #[]
def mask55 : Array Int := (parseInts cert55.anchorText).getD #[]
def block55 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u55
  R := Gram.readMatrix 30 r55
  C := Gram.readMatrix 30 c55
  J := Gram.readMatrix 30 j55
  E := fun a j => (basis55[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask55[j.val]?.getD 0).toNat
  anchor := fun j => (basis55[j.val]?.getD 0).toNat
}
theorem block55_check : blockCheck block55.toBlock = true := block55_typed
end VascDerivativePolynomial
