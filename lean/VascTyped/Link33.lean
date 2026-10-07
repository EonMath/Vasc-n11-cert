import VascTyped.Block33
import VascDerivative.Block33
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block33_source_link :
  u33 = triangularLift 68 ((parseInts cert33.uText).getD #[]) ∧
  r33 = ((parseInts cert33.rText).getD #[]) ∧
  u33.size = 68*68 ∧ r33.size = 68*68 ∧ c33.size = 68*68 ∧ j33.size = 68*68 := by native_decide
end VascDerivativeTyped
