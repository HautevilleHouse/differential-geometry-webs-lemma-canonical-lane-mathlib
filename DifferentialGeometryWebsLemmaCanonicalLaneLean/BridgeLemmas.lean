import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WebStructureClosed (A.object.space.carrier) A.object.web

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.webEvidence

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse
