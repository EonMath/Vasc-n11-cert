import VascTyped.Block79
import VascDerivative.Block79
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block79_source_link :
  u79 = triangularLift 33 ((parseInts cert79.uText).getD #[]) ∧
  r79 = ((parseInts cert79.rText).getD #[]) ∧
  u79.size = 33*33 ∧ r79.size = 33*33 ∧ c79.size = 33*33 ∧ j79.size = 33*33 := by native_decide
end VascDerivativeTyped
