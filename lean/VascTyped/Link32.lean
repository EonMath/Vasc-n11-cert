import VascTyped.Block32
import VascDerivative.Block32
import VascTyped.SourceLink
namespace VascDerivativeTyped
open VascDerivativeFull
theorem block32_source_link :
  u32 = triangularLift 66 ((parseInts cert32.uText).getD #[]) ∧
  r32 = ((parseInts cert32.rText).getD #[]) ∧
  u32.size = 66*66 ∧ r32.size = 66*66 ∧ c32.size = 66*66 ∧ j32.size = 66*66 := by native_decide
end VascDerivativeTyped
