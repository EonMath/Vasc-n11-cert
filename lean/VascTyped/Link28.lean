import VascTyped.Block28
import VascDerivative.Block28
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block28_source_link :
  u28 = triangularLift 70 ((parseInts cert28.uText).getD #[]) ∧
  r28 = ((parseInts cert28.rText).getD #[]) ∧
  u28.size = 70*70 ∧ r28.size = 70*70 ∧ c28.size = 70*70 ∧ j28.size = 70*70 := by native_decide
end VascDerivativeTyped
