import VascTyped.Link89
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis89 : Array Int := (parseInts cert89.basisText).getD #[]
def mask89 : Array Int := (parseInts cert89.anchorText).getD #[]
def block89 : DerivativeBlock := {
  q := 10
  U := Gram.readMatrix 10 u89
  R := Gram.readMatrix 10 r89
  C := Gram.readMatrix 10 c89
  J := Gram.readMatrix 10 j89
  E := fun a j => (basis89[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask89[j.val]?.getD 0).toNat
  anchor := fun j => (basis89[j.val]?.getD 0).toNat
}
theorem block89_check : blockCheck block89.toBlock = true := block89_typed
end VascDerivativePolynomial
