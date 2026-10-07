import VascTyped.Block07
import VascDerivative.Block07
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block7_source_link :
  u7 = triangularLift 66 ((parseInts cert7.uText).getD #[]) ∧
  r7 = ((parseInts cert7.rText).getD #[]) ∧
  u7.size = 66*66 ∧ r7.size = 66*66 ∧ c7.size = 66*66 ∧ j7.size = 66*66 := by native_decide
end VascDerivativeTyped
