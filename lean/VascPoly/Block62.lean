import VascTyped.Link62
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis62 : Array Int := (parseInts cert62.basisText).getD #[]
def mask62 : Array Int := (parseInts cert62.anchorText).getD #[]
def block62 : DerivativeBlock := {
  q := 71
  U := Gram.readMatrix 71 u62
  R := Gram.readMatrix 71 r62
  C := Gram.readMatrix 71 c62
  J := Gram.readMatrix 71 j62
  E := fun a j => (basis62[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask62[j.val]?.getD 0).toNat
  anchor := fun j => (basis62[j.val]?.getD 0).toNat
}
theorem block62_check : blockCheck block62.toBlock = true := block62_typed
end VascDerivativePolynomial
