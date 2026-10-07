import VascTyped.Block64
import VascDerivative.Block64
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block64_source_link :
  u64 = triangularLift 74 ((parseInts cert64.uText).getD #[]) ∧
  r64 = ((parseInts cert64.rText).getD #[]) ∧
  u64.size = 74*74 ∧ r64.size = 74*74 ∧ c64.size = 74*74 ∧ j64.size = 74*74 := by native_decide
end VascDerivativeTyped
