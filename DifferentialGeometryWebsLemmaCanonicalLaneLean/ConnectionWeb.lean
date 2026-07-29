import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure ConnectionWebPackage where
  principalBundle : Type u
  baseManifold : Type v
  structureGroup : Type w
  connectionForm : Type x
  curvatureForm : Type y
  holonomyGroup : Type z
  flatConnection : Prop
  parallelTransportConsistent : Prop
  curvatureVanishesOnWeb : Prop

structure ConnectionWebEvidence (C : ConnectionWebPackage) where
  flatConnectionClosed : C.flatConnection
  parallelTransportConsistentClosed : C.parallelTransportConsistent
  curvatureVanishesOnWebClosed : C.curvatureVanishesOnWeb

def ConnectionWebClosed (C : ConnectionWebPackage) : Prop :=
  C.flatConnection ∧ C.parallelTransportConsistent ∧ C.curvatureVanishesOnWeb

theorem connection_web_closed_from_evidence (C : ConnectionWebPackage) (E : ConnectionWebEvidence C) : ConnectionWebClosed C := by
  exact And.intro E.flatConnectionClosed (And.intro E.parallelTransportConsistentClosed E.curvatureVanishesOnWebClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse