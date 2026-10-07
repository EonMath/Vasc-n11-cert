import VascTyped.Link32
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis32 : Array Int := (parseInts cert32.basisText).getD #[]
def mask32 : Array Int := (parseInts cert32.anchorText).getD #[]
def block32 : DerivativeBlock := {
  q := 66
  U := Gram.readMatrix 66 u32
  R := Gram.readMatrix 66 r32
  C := Gram.readMatrix 66 c32
  J := Gram.readMatrix 66 j32
  E := fun a j => (basis32[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask32[j.val]?.getD 0).toNat
  anchor := fun j => (basis32[j.val]?.getD 0).toNat
}
theorem block32_check : blockCheck block32.toBlock = true := block32_typed
end VascDerivativePolynomial
