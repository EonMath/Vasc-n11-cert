import VascTyped.Link31
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis31 : Array Int := (parseInts cert31.basisText).getD #[]
def mask31 : Array Int := (parseInts cert31.anchorText).getD #[]
def block31 : DerivativeBlock := {
  q := 121
  U := Gram.readMatrix 121 u31
  R := Gram.readMatrix 121 r31
  C := Gram.readMatrix 121 c31
  J := Gram.readMatrix 121 j31
  E := fun a j => (basis31[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask31[j.val]?.getD 0).toNat
  anchor := fun j => (basis31[j.val]?.getD 0).toNat
}
theorem block31_check : blockCheck block31.toBlock = true := block31_typed
end VascDerivativePolynomial
