import VascTyped.Block74
import VascDerivative.Block74
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block74_source_link :
  u74 = triangularLift 33 ((parseInts cert74.uText).getD #[]) ∧
  r74 = ((parseInts cert74.rText).getD #[]) ∧
  u74.size = 33*33 ∧ r74.size = 33*33 ∧ c74.size = 33*33 ∧ j74.size = 33*33 := by native_decide
end VascDerivativeTyped
