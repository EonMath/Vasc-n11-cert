import VascTyped.Link38
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis38 : Array Int := (parseInts cert38.basisText).getD #[]
def mask38 : Array Int := (parseInts cert38.anchorText).getD #[]
def block38 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u38
  R := Gram.readMatrix 71 r38
  C := Gram.readMatrix 71 c38
  J := Gram.readMatrix 71 j38
  E := fun a j => (basis38[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask38[j.val]?.getD 0).toNat
  anchor := fun j => (basis38[j.val]?.getD 0).toNat
}
theorem block38_check : blockCheck block38.toBlock = true := block38_typed
end VascDerivativePolynomial
