import VascTyped.Block76
import VascDerivative.Block76
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block76_source_link :
  u76 = triangularLift 36 ((parseInts cert76.uText).getD #[]) ∧
  r76 = ((parseInts cert76.rText).getD #[]) ∧
  u76.size = 36*36 ∧ r76.size = 36*36 ∧ c76.size = 36*36 ∧ j76.size = 36*36 := by native_decide
end VascDerivativeTyped
