import VascTyped.Link56
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis56 : Array Int := (parseInts cert56.basisText).getD #[]
def mask56 : Array Int := (parseInts cert56.anchorText).getD #[]
def block56 : DerivativeBlock := {
  q := 76
  U := Gram.readMatrix 76 u56
  R := Gram.readMatrix 76 r56
  C := Gram.readMatrix 76 c56
  J := Gram.readMatrix 76 j56
  E := fun a j => (basis56[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask56[j.val]?.getD 0).toNat
  anchor := fun j => (basis56[j.val]?.getD 0).toNat
}
theorem block56_check : blockCheck block56.toBlock = true := block56_typed
end VascDerivativePolynomial
