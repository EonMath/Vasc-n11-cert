import VascTyped.Block77
import VascDerivative.Block77
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block77_source_link :
  u77 = triangularLift 35 ((parseInts cert77.uText).getD #[]) ∧
  r77 = ((parseInts cert77.rText).getD #[]) ∧
  u77.size = 35*35 ∧ r77.size = 35*35 ∧ c77.size = 35*35 ∧ j77.size = 35*35 := by native_decide
end VascDerivativeTyped
