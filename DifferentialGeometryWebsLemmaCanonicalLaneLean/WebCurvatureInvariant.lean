import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebCurvatureInvariant where
  web : WebStructure
  curvatureTensor : Type v
  curvatureZeroCondition : Prop
  invariantCondition : Prop
  curvatureZeroTerm : curvatureZeroCondition
  invariantTerm : invariantCondition

def WebCurvatureClosed (I : WebCurvatureInvariant) : Prop :=
  I.curvatureZeroCondition ∧ I.invariantCondition

theorem web_curvature_closed_from_evidence (I : WebCurvatureInvariant) : WebCurvatureClosed I :=
  And.intro I.curvatureZeroTerm I.invariantTerm

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse