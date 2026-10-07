import VascTyped.Link00
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis0 : Array Int := (parseInts cert0.basisText).getD #[]
def mask0 : Array Int := (parseInts cert0.anchorText).getD #[]
def block0 : DerivativeBlock := {
  q := 184
  U := Gram.readMatrix 184 u0
  R := Gram.readMatrix 184 r0
  C := Gram.readMatrix 184 c0
  J := Gram.readMatrix 184 j0
  E := fun a j => (basis0[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask0[j.val]?.getD 0).toNat
  anchor := fun j => (basis0[j.val]?.getD 0).toNat
}
theorem block0_check : blockCheck block0.toBlock = true := block0_typed
end VascDerivativePolynomial
