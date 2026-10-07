import VascTyped.Block65
import VascDerivative.Block65
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block65_source_link :
  u65 = triangularLift 74 ((parseInts cert65.uText).getD #[]) ∧
  r65 = ((parseInts cert65.rText).getD #[]) ∧
  u65.size = 74*74 ∧ r65.size = 74*74 ∧ c65.size = 74*74 ∧ j65.size = 74*74 := by native_decide
end VascDerivativeTyped
