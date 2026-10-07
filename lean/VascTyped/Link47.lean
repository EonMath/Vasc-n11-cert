import VascTyped.Block47
import VascDerivative.Block47
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block47_source_link :
  u47 = triangularLift 71 ((parseInts cert47.uText).getD #[]) ∧
  r47 = ((parseInts cert47.rText).getD #[]) ∧
  u47.size = 71*71 ∧ r47.size = 71*71 ∧ c47.size = 71*71 ∧ j47.size = 71*71 := by native_decide
end VascDerivativeTyped
