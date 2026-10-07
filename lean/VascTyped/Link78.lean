import VascTyped.Block78
import VascDerivative.Block78
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block78_source_link :
  u78 = triangularLift 34 ((parseInts cert78.uText).getD #[]) ∧
  r78 = ((parseInts cert78.rText).getD #[]) ∧
  u78.size = 34*34 ∧ r78.size = 34*34 ∧ c78.size = 34*34 ∧ j78.size = 34*34 := by native_decide
end VascDerivativeTyped
