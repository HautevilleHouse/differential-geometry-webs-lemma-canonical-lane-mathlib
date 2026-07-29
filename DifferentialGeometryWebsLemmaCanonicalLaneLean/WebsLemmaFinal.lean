import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryWebsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DifferentialGeometryWebsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

def ConstrainedWebsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_webs_lemma_endgame (A : AdmissibleClass) :
    ConstrainedWebsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse