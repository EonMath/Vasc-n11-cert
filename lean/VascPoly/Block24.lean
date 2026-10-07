import VascTyped.Link24
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis24 : Array Int := (parseInts cert24.basisText).getD #[]
def mask24 : Array Int := (parseInts cert24.anchorText).getD #[]
def block24 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u24
  R := Gram.readMatrix 71 r24
  C := Gram.readMatrix 71 c24
  J := Gram.readMatrix 71 j24
  E := fun a j => (basis24[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask24[j.val]?.getD 0).toNat
  anchor := fun j => (basis24[j.val]?.getD 0).toNat
}
theorem block24_check : blockCheck block24.toBlock = true := block24_typed
end VascDerivativePolynomial
