import Mathlib.Analysis.Calculus.Manifold

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebGeodesicFlowPackage where
  webManifold : Type u
  webMetric : Type v
  geodesicFlow : Type w
  webParallelTransport : Type
  holonomyGroup : Type
  metricCompatible : Prop
  geodesicFlowDefined : Prop
  parallelTransportWellDefined : Prop
  holonomyGroupClosed : Prop

structure WebGeodesicFlowEvidence (G : WebGeodesicFlowPackage) where
  metricCompatibleClosed : G.metricCompatible
  geodesicFlowDefinedClosed : G.geodesicFlowDefined
  parallelTransportWellDefinedClosed : G.parallelTransportWellDefined
  holonomyGroupClosedClosed : G.holonomyGroupClosed

def WebGeodesicFlowClosed (G : WebGeodesicFlowPackage) : Prop :=
  G.metricCompatible ∧ G.geodesicFlowDefined ∧ G.parallelTransportWellDefined ∧ G.holonomyGroupClosed

theorem web_geodesic_flow_closed_from_evidence (G : WebGeodesicFlowPackage) (E : WebGeodesicFlowEvidence G) : WebGeodesicFlowClosed G := by
  exact And.intro E.metricCompatibleClosed (And.intro E.geodesicFlowDefinedClosed (And.intro E.parallelTransportWellDefinedClosed E.holonomyGroupClosedClosed))

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse