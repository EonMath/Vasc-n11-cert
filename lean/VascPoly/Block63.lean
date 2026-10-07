import VascTyped.Link63
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis63 : Array Int := (parseInts cert63.basisText).getD #[]
def mask63 : Array Int := (parseInts cert63.anchorText).getD #[]
def block63 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u63
  R := Gram.readMatrix 71 r63
  C := Gram.readMatrix 71 c63
  J := Gram.readMatrix 71 j63
  E := fun a j => (basis63[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask63[j.val]?.getD 0).toNat
  anchor := fun j => (basis63[j.val]?.getD 0).toNat
}
theorem block63_check : blockCheck block63.toBlock = true := block63_typed
end VascDerivativePolynomial
