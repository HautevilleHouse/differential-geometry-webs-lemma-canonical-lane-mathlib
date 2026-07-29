import Mathlib.Geometry.Manifold.Connections

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebCurvatureInvariantsPackage where
  webConnection : Type u
  curvatureTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  curvatureSymmetries : Prop
  bianchiIdentities : Prop
  ricciContracted : Prop
  scalarTraced : Prop

structure WebCurvatureInvariantsEvidence (C : WebCurvatureInvariantsPackage) where
  curvatureSymmetriesClosed : C.curvatureSymmetries
  bianchiIdentitiesClosed : C.bianchiIdentities
  ricciContractedClosed : C.ricciContracted
  scalarTracedClosed : C.scalarTraced

def WebCurvatureInvariantsClosed (C : WebCurvatureInvariantsPackage) : Prop :=
  C.curvatureSymmetries ∧ C.bianchiIdentities ∧ C.ricciContracted ∧ C.scalarTraced

theorem web_curvature_invariants_closed_from_evidence (C : WebCurvatureInvariantsPackage) (E : WebCurvatureInvariantsEvidence C) : WebCurvatureInvariantsClosed C := by
  exact And.intro E.curvatureSymmetriesClosed (And.intro E.bianchiIdentitiesClosed (And.intro E.ricciContractedClosed E.scalarTracedClosed))

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse