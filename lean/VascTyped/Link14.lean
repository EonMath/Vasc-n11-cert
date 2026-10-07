import VascTyped.Block14
import VascDerivative.Block14
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block14_source_link :
  u14 = triangularLift 66 ((parseInts cert14.uText).getD #[]) ∧
  r14 = ((parseInts cert14.rText).getD #[]) ∧
  u14.size = 66*66 ∧ r14.size = 66*66 ∧ c14.size = 66*66 ∧ j14.size = 66*66 := by native_decide
end VascDerivativeTyped
