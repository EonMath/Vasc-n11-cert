import VascTyped.Block58
import VascDerivative.Block58
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block58_source_link :
  u58 = triangularLift 72 ((parseInts cert58.uText).getD #[]) ∧
  r58 = ((parseInts cert58.rText).getD #[]) ∧
  u58.size = 72*72 ∧ r58.size = 72*72 ∧ c58.size = 72*72 ∧ j58.size = 72*72 := by native_decide
end VascDerivativeTyped
