import VascTyped.Block53
import VascDerivative.Block53
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block53_source_link :
  u53 = triangularLift 30 ((parseInts cert53.uText).getD #[]) ∧
  r53 = ((parseInts cert53.rText).getD #[]) ∧
  u53.size = 30*30 ∧ r53.size = 30*30 ∧ c53.size = 30*30 ∧ j53.size = 30*30 := by native_decide
end VascDerivativeTyped
