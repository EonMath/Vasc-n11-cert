import VascTyped.Link27
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis27 : Array Int := (parseInts cert27.basisText).getD #[]
def mask27 : Array Int := (parseInts cert27.anchorText).getD #[]
def block27 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u27
  R := Gram.readMatrix 71 r27
  C := Gram.readMatrix 71 c27
  J := Gram.readMatrix 71 j27
  E := fun a j => (basis27[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask27[j.val]?.getD 0).toNat
  anchor := fun j => (basis27[j.val]?.getD 0).toNat
}
theorem block27_check : blockCheck block27.toBlock = true := block27_typed
end VascDerivativePolynomial
