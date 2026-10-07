import VascTyped.Block85
import VascDerivative.Block85
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block85_source_link :
  u85 = triangularLift 35 ((parseInts cert85.uText).getD #[]) ∧
  r85 = ((parseInts cert85.rText).getD #[]) ∧
  u85.size = 35*35 ∧ r85.size = 35*35 ∧ c85.size = 35*35 ∧ j85.size = 35*35 := by native_decide
end VascDerivativeTyped
