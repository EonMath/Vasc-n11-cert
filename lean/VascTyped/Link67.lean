import VascTyped.Block67
import VascDerivative.Block67
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block67_source_link :
  u67 = triangularLift 34 ((parseInts cert67.uText).getD #[]) ∧
  r67 = ((parseInts cert67.rText).getD #[]) ∧
  u67.size = 34*34 ∧ r67.size = 34*34 ∧ c67.size = 34*34 ∧ j67.size = 34*34 := by native_decide
end VascDerivativeTyped
