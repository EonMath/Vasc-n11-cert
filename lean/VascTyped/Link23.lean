import VascTyped.Block23
import VascDerivative.Block23
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block23_source_link :
  u23 = triangularLift 68 ((parseInts cert23.uText).getD #[]) ∧
  r23 = ((parseInts cert23.rText).getD #[]) ∧
  u23.size = 68*68 ∧ r23.size = 68*68 ∧ c23.size = 68*68 ∧ j23.size = 68*68 := by native_decide
end VascDerivativeTyped
