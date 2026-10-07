import VascTyped.Block08
import VascDerivative.Block08
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block8_source_link :
  u8 = triangularLift 118 ((parseInts cert8.uText).getD #[]) ∧
  r8 = ((parseInts cert8.rText).getD #[]) ∧
  u8.size = 118*118 ∧ r8.size = 118*118 ∧ c8.size = 118*118 ∧ j8.size = 118*118 := by native_decide
end VascDerivativeTyped
