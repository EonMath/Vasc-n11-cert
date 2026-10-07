import VascTyped.Block49
import VascDerivative.Block49
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block49_source_link :
  u49 = triangularLift 30 ((parseInts cert49.uText).getD #[]) ∧
  r49 = ((parseInts cert49.rText).getD #[]) ∧
  u49.size = 30*30 ∧ r49.size = 30*30 ∧ c49.size = 30*30 ∧ j49.size = 30*30 := by native_decide
end VascDerivativeTyped
