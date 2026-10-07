import VascTyped.Block55
import VascDerivative.Block55
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block55_source_link :
  u55 = triangularLift 30 ((parseInts cert55.uText).getD #[]) ∧
  r55 = ((parseInts cert55.rText).getD #[]) ∧
  u55.size = 30*30 ∧ r55.size = 30*30 ∧ c55.size = 30*30 ∧ j55.size = 30*30 := by native_decide
end VascDerivativeTyped
