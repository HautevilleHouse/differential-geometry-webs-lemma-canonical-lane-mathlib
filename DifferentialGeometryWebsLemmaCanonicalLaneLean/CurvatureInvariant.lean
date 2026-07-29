import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannCurvatureTensor : Type u
  sectionalCurvature : Type v
  ricciCurvature : Type w
  scalarCurvature : Type x
  invariantUnderWeb : Prop
  boundedCurvature : Prop
  curvatureDecomposition : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  invariantUnderWebClosed : C.invariantUnderWeb
  boundedCurvatureClosed : C.boundedCurvature
  curvatureDecompositionClosed : C.curvatureDecomposition

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.invariantUnderWeb ∧ C.boundedCurvature ∧ C.curvatureDecomposition

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.invariantUnderWebClosed (And.intro E.boundedCurvatureClosed E.curvatureDecompositionClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse