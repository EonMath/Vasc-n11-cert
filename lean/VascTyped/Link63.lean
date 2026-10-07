import VascTyped.Block63
import VascDerivative.Block63
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block63_source_link :
  u63 = triangularLift 71 ((parseInts cert63.uText).getD #[]) ∧
  r63 = ((parseInts cert63.rText).getD #[]) ∧
  u63.size = 71*71 ∧ r63.size = 71*71 ∧ c63.size = 71*71 ∧ j63.size = 71*71 := by native_decide
end VascDerivativeTyped
