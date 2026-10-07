import VascTyped.Defs
namespace VascDerivativeTyped
-- Exact lower-triangular, column-major placement of source common-denominator U.
def triangularLift (n : Nat) (u : Array Int) : Array Int := Id.run do
  let mut a := Array.replicate (n*n) (0 : Int)
  let mut k := 0
  for b in [:n] do
    for i in [b:n] do
      a := a.set! (i*n+b) (u[k]?.getD 0)
      k := k+1
  return a
end VascDerivativeTyped
