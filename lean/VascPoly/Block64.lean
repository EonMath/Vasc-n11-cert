import VascTyped.Link64
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis64 : Array Int := (parseInts cert64.basisText).getD #[]
def mask64 : Array Int := (parseInts cert64.anchorText).getD #[]
def block64 : DerivativeBlock := {
  q := 74
  U := Gram.readMatrix 74 u64
  R := Gram.readMatrix 74 r64
  C := Gram.readMatrix 74 c64
  J := Gram.readMatrix 74 j64
  E := fun a j => (basis64[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask64[j.val]?.getD 0).toNat
  anchor := fun j => (basis64[j.val]?.getD 0).toNat
}
theorem block64_check : blockCheck block64.toBlock = true := block64_typed
end VascDerivativePolynomial
