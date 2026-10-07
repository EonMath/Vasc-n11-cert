import VascTyped.Block43
import VascDerivative.Block43
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block43_source_link :
  u43 = triangularLift 66 ((parseInts cert43.uText).getD #[]) ∧
  r43 = ((parseInts cert43.rText).getD #[]) ∧
  u43.size = 66*66 ∧ r43.size = 66*66 ∧ c43.size = 66*66 ∧ j43.size = 66*66 := by native_decide
end VascDerivativeTyped
