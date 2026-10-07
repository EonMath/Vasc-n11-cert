import VascTyped.Block13
import VascDerivative.Block13
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block13_source_link :
  u13 = triangularLift 66 ((parseInts cert13.uText).getD #[]) ∧
  r13 = ((parseInts cert13.rText).getD #[]) ∧
  u13.size = 66*66 ∧ r13.size = 66*66 ∧ c13.size = 66*66 ∧ j13.size = 66*66 := by native_decide
end VascDerivativeTyped
