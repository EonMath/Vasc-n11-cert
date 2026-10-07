import VascTyped.Block03
import VascDerivative.Block03
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block3_source_link :
  u3 = triangularLift 118 ((parseInts cert3.uText).getD #[]) ∧
  r3 = ((parseInts cert3.rText).getD #[]) ∧
  u3.size = 118*118 ∧ r3.size = 118*118 ∧ c3.size = 118*118 ∧ j3.size = 118*118 := by native_decide
end VascDerivativeTyped
