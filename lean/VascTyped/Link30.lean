import VascTyped.Block30
import VascDerivative.Block30
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block30_source_link :
  u30 = triangularLift 30 ((parseInts cert30.uText).getD #[]) ∧
  r30 = ((parseInts cert30.rText).getD #[]) ∧
  u30.size = 30*30 ∧ r30.size = 30*30 ∧ c30.size = 30*30 ∧ j30.size = 30*30 := by native_decide
end VascDerivativeTyped
