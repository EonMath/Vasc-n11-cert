import VascTyped.Block73
import VascDerivative.Block73
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block73_source_link :
  u73 = triangularLift 34 ((parseInts cert73.uText).getD #[]) ∧
  r73 = ((parseInts cert73.rText).getD #[]) ∧
  u73.size = 34*34 ∧ r73.size = 34*34 ∧ c73.size = 34*34 ∧ j73.size = 34*34 := by native_decide
end VascDerivativeTyped
