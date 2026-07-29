import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

def ConstrainedDifferentialGeometryWebsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_geometry_webs_lemma_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialGeometryWebsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse