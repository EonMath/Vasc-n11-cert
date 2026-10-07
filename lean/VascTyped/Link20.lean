import VascTyped.Block20
import VascDerivative.Block20
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block20_source_link :
  u20 = triangularLift 121 ((parseInts cert20.uText).getD #[]) ∧
  r20 = ((parseInts cert20.rText).getD #[]) ∧
  u20.size = 121*121 ∧ r20.size = 121*121 ∧ c20.size = 121*121 ∧ j20.size = 121*121 := by native_decide
end VascDerivativeTyped
