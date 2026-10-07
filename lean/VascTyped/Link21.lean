import VascTyped.Block21
import VascDerivative.Block21
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block21_source_link :
  u21 = triangularLift 70 ((parseInts cert21.uText).getD #[]) ∧
  r21 = ((parseInts cert21.rText).getD #[]) ∧
  u21.size = 70*70 ∧ r21.size = 70*70 ∧ c21.size = 70*70 ∧ j21.size = 70*70 := by native_decide
end VascDerivativeTyped
