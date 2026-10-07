import VascTyped.Block35
import VascDerivative.Block35
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block35_source_link :
  u35 = triangularLift 70 ((parseInts cert35.uText).getD #[]) ∧
  r35 = ((parseInts cert35.rText).getD #[]) ∧
  u35.size = 70*70 ∧ r35.size = 70*70 ∧ c35.size = 70*70 ∧ j35.size = 70*70 := by native_decide
end VascDerivativeTyped
