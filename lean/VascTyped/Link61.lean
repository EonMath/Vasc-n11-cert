import VascTyped.Block61
import VascDerivative.Block61
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block61_source_link :
  u61 = triangularLift 36 ((parseInts cert61.uText).getD #[]) ∧
  r61 = ((parseInts cert61.rText).getD #[]) ∧
  u61.size = 36*36 ∧ r61.size = 36*36 ∧ c61.size = 36*36 ∧ j61.size = 36*36 := by native_decide
end VascDerivativeTyped
