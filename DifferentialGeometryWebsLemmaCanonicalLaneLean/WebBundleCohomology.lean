import Mathlib.Topology.Sheaves.Sheaf

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebBundleCohomologyPackage where
  webBundle : Type u
  baseManifold : Type v
  projection : webBundle → baseManifold
  fiber : Type w
  connectionForm : Type
  curvatureForm : Type
  cohomologyClass : Type
  webStructureCompatible : Prop
  connectionFlat : Prop
  curvatureClosed : Prop
  cohomologyWellDefined : Prop

structure WebBundleCohomologyEvidence (C : WebBundleCohomologyPackage) where
  webStructureCompatibleClosed : C.webStructureCompatible
  connectionFlatClosed : C.connectionFlat
  curvatureClosedClosed : C.curvatureClosed
  cohomologyWellDefinedClosed : C.cohomologyWellDefined

def WebBundleCohomologyClosed (C : WebBundleCohomologyPackage) : Prop :=
  C.webStructureCompatible ∧ C.connectionFlat ∧ C.curvatureClosed ∧ C.cohomologyWellDefined

theorem web_bundle_cohomology_closed_from_evidence (C : WebBundleCohomologyPackage) (E : WebBundleCohomologyEvidence C) : WebBundleCohomologyClosed C := by
  exact And.intro E.webStructureCompatibleClosed (And.intro E.connectionFlatClosed (And.intro E.curvatureClosedClosed E.cohomologyWellDefinedClosed))

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse