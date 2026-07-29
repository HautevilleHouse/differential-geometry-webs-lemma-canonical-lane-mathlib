import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebStructureConstants where
  webDimension : Nat
  webCodimension : Nat
  webRank : Nat
  webRegularity : Prop
  webIntegrability : Prop
  webRegularityTerm : webRegularity
  webIntegrabilityTerm : webIntegrability

structure WebStructureConstantsEvidence (W : WebStructureConstants) where
  webRegularityClosed : W.webRegularity
  webIntegrabilityClosed : W.webIntegrability

def WebStructureConstantsClosed (W : WebStructureConstants) : Prop :=
  W.webRegularity ∧ W.webIntegrability

theorem web_structure_constants_closed_from_evidence (W : WebStructureConstants) (E : WebStructureConstantsEvidence W) : WebStructureConstantsClosed W := by
  exact And.intro E.webRegularityClosed E.webIntegrabilityClosed

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse