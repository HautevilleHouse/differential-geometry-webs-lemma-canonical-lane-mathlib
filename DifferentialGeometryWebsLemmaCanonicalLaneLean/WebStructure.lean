import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebStructurePackage where
  webType : Type u
  foliation : Type v
  transverseStructure : Type w
  integrability : Prop
  webClosedUnderLieBracket : Prop
  leafSpaceSmooth : Prop

structure WebStructureEvidence (W : WebStructurePackage) where
  integrabilityClosed : W.integrability
  webClosedUnderLieBracketClosed : W.webClosedUnderLieBracket
  leafSpaceSmoothClosed : W.leafSpaceSmooth

def WebStructureClosed (W : WebStructurePackage) : Prop :=
  W.integrability ∧ W.webClosedUnderLieBracket ∧ W.leafSpaceSmooth

theorem web_structure_closed_from_evidence (W : WebStructurePackage) (E : WebStructureEvidence W) : WebStructureClosed W := by
  exact And.intro E.integrabilityClosed (And.intro E.webClosedUnderLieBracketClosed E.leafSpaceSmoothClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse