import VascTyped.Block01
import VascDerivative.Block01
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block1_source_link :
  u1 = triangularLift 117 ((parseInts cert1.uText).getD #[]) ∧
  r1 = ((parseInts cert1.rText).getD #[]) ∧
  u1.size = 117*117 ∧ r1.size = 117*117 ∧ c1.size = 117*117 ∧ j1.size = 117*117 := by native_decide
end VascDerivativeTyped
