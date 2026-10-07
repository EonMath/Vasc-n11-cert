import VascTyped.Link82
import VascPoly.Defs
namespace VascDerivativePolynomial
open VascCertificate VascCertificate.Polynomial VascDerivativeTyped VascDerivativeFull
def basis82 : Array Int := (parseInts cert82.basisText).getD #[]
def mask82 : Array Int := (parseInts cert82.anchorText).getD #[]
def block82 : DerivativeBlock := {
  q := 35
  U := Gram.readMatrix 35 u82
  R := Gram.readMatrix 35 r82
  C := Gram.readMatrix 35 c82
  J := Gram.readMatrix 35 j82
  E := fun a j => (basis82[(a.val+1)*11+j.val]?.getD 0).toNat
  mask := fun j => (mask82[j.val]?.getD 0).toNat
  anchor := fun j => (basis82[j.val]?.getD 0).toNat
}
theorem block82_check : blockCheck block82.toBlock = true := block82_typed
end VascDerivativePolynomial
