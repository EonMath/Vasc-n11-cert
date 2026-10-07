import VascTyped.Block54
import VascDerivative.Block54
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block54_source_link :
  u54 = triangularLift 30 ((parseInts cert54.uText).getD #[]) ∧
  r54 = ((parseInts cert54.rText).getD #[]) ∧
  u54.size = 30*30 ∧ r54.size = 30*30 ∧ c54.size = 30*30 ∧ j54.size = 30*30 := by native_decide
end VascDerivativeTyped
