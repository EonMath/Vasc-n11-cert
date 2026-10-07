import VascTyped.Block81
import VascDerivative.Block81
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block81_source_link :
  u81 = triangularLift 34 ((parseInts cert81.uText).getD #[]) ∧
  r81 = ((parseInts cert81.rText).getD #[]) ∧
  u81.size = 34*34 ∧ r81.size = 34*34 ∧ c81.size = 34*34 ∧ j81.size = 34*34 := by native_decide
end VascDerivativeTyped
