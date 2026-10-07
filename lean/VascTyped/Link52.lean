import VascTyped.Block52
import VascDerivative.Block52
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block52_source_link :
  u52 = triangularLift 30 ((parseInts cert52.uText).getD #[]) ∧
  r52 = ((parseInts cert52.rText).getD #[]) ∧
  u52.size = 30*30 ∧ r52.size = 30*30 ∧ c52.size = 30*30 ∧ j52.size = 30*30 := by native_decide
end VascDerivativeTyped
