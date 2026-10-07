import VascTyped.Block57
import VascDerivative.Block57
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block57_source_link :
  u57 = triangularLift 74 ((parseInts cert57.uText).getD #[]) ∧
  r57 = ((parseInts cert57.rText).getD #[]) ∧
  u57.size = 74*74 ∧ r57.size = 74*74 ∧ c57.size = 74*74 ∧ j57.size = 74*74 := by native_decide
end VascDerivativeTyped
