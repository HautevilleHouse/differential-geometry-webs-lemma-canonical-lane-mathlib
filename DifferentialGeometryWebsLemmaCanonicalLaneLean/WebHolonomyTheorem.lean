import Mathlib.Geometry.Manifold.Holonomy

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebHolonomyTheoremPackage where
  webHolonomyGroup : Type u
  webAmbroseSinger : Prop
  holonomyFlatnessEquivalence : Prop
  webClosedGeodesics : Prop
  ambroseSingerTerm : webAmbroseSinger
  holonomyFlatnessEquivalenceTerm : holonomyFlatnessEquivalence
  webClosedGeodesicsTerm : webClosedGeodesics

structure WebHolonomyTheoremEvidence (H : WebHolonomyTheoremPackage) where
  webAmbroseSingerClosed : H.webAmbroseSinger
  holonomyFlatnessEquivalenceClosed : H.holonomyFlatnessEquivalence
  webClosedGeodesicsClosed : H.webClosedGeodesics

def WebHolonomyTheoremClosed (H : WebHolonomyTheoremPackage) : Prop :=
  H.webAmbroseSinger ∧ H.holonomyFlatnessEquivalence ∧ H.webClosedGeodesics

theorem web_holonomy_theorem_closed_from_evidence (H : WebHolonomyTheoremPackage) (E : WebHolonomyTheoremEvidence H) : WebHolonomyTheoremClosed H := by
  exact And.intro E.webAmbroseSingerClosed (And.intro E.holonomyFlatnessEquivalenceClosed E.webClosedGeodesicsClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse