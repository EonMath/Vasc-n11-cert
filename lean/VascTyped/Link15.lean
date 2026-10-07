import VascTyped.Block15
import VascDerivative.Block15
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block15_source_link :
  u15 = triangularLift 66 ((parseInts cert15.uText).getD #[]) ∧
  r15 = ((parseInts cert15.rText).getD #[]) ∧
  u15.size = 66*66 ∧ r15.size = 66*66 ∧ c15.size = 66*66 ∧ j15.size = 66*66 := by native_decide
end VascDerivativeTyped
