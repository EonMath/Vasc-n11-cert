import VascTyped.Block60
import VascDerivative.Block60
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block60_source_link :
  u60 = triangularLift 74 ((parseInts cert60.uText).getD #[]) ∧
  r60 = ((parseInts cert60.rText).getD #[]) ∧
  u60.size = 74*74 ∧ r60.size = 74*74 ∧ c60.size = 74*74 ∧ j60.size = 74*74 := by native_decide
end VascDerivativeTyped
