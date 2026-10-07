import VascTyped.Block83
import VascDerivative.Block83
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block83_source_link :
  u83 = triangularLift 10 ((parseInts cert83.uText).getD #[]) ∧
  r83 = ((parseInts cert83.rText).getD #[]) ∧
  u83.size = 10*10 ∧ r83.size = 10*10 ∧ c83.size = 10*10 ∧ j83.size = 10*10 := by native_decide
end VascDerivativeTyped
