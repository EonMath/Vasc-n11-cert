import VascTyped.Block12
import VascDerivative.Block12
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block12_source_link :
  u12 = triangularLift 118 ((parseInts cert12.uText).getD #[]) ∧
  r12 = ((parseInts cert12.rText).getD #[]) ∧
  u12.size = 118*118 ∧ r12.size = 118*118 ∧ c12.size = 118*118 ∧ j12.size = 118*118 := by native_decide
end VascDerivativeTyped
