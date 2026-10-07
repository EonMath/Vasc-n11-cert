import VascTyped.Link33
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis33 : Array Int := (parseInts cert33.basisText).getD #[]
def mask33 : Array Int := (parseInts cert33.anchorText).getD #[]
def block33 : DerivativeBlock := {
  q := 68
  U := Gram.readMatrix 68 u33
  R := Gram.readMatrix 68 r33
  C := Gram.readMatrix 68 c33
  J := Gram.readMatrix 68 j33
  E := fun a j => (basis33[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask33[j.val]?.getD 0).toNat
  anchor := fun j => (basis33[j.val]?.getD 0).toNat
}
theorem block33_check : blockCheck block33.toBlock = true := block33_typed
end VascDerivativePolynomial
