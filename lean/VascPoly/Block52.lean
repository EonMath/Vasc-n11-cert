import VascTyped.Link52
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis52 : Array Int := (parseInts cert52.basisText).getD #[]
def mask52 : Array Int := (parseInts cert52.anchorText).getD #[]
def block52 : DerivativeBlock := {
  q := 30
  U := Gram.readMatrix 30 u52
  R := Gram.readMatrix 30 r52
  C := Gram.readMatrix 30 c52
  J := Gram.readMatrix 30 j52
  E := fun a j => (basis52[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask52[j.val]?.getD 0).toNat
  anchor := fun j => (basis52[j.val]?.getD 0).toNat
}
theorem block52_check : blockCheck block52.toBlock = true := block52_typed
end VascDerivativePolynomial
