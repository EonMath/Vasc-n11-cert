import VascTyped.Block18
import VascDerivative.Block18
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block18_source_link :
  u18 = triangularLift 125 ((parseInts cert18.uText).getD #[]) ∧
  r18 = ((parseInts cert18.rText).getD #[]) ∧
  u18.size = 125*125 ∧ r18.size = 125*125 ∧ c18.size = 125*125 ∧ j18.size = 125*125 := by native_decide
end VascDerivativeTyped
