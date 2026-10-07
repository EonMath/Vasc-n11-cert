import VascTyped.Block89
import VascDerivative.Block89
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block89_source_link :
  u89 = triangularLift 10 ((parseInts cert89.uText).getD #[]) ∧
  r89 = ((parseInts cert89.rText).getD #[]) ∧
  u89.size = 10*10 ∧ r89.size = 10*10 ∧ c89.size = 10*10 ∧ j89.size = 10*10 := by native_decide
end VascDerivativeTyped
