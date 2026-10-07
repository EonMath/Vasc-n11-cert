import VascTyped.Block41
import VascDerivative.Block41
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block41_source_link :
  u41 = triangularLift 70 ((parseInts cert41.uText).getD #[]) ∧
  r41 = ((parseInts cert41.rText).getD #[]) ∧
  u41.size = 70*70 ∧ r41.size = 70*70 ∧ c41.size = 70*70 ∧ j41.size = 70*70 := by native_decide
end VascDerivativeTyped
