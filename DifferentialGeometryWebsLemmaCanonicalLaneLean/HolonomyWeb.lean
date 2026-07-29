import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure HolonomyWebPackage where
  connection : Type u
  holonomyGroup : Type v
  restrictedHolonomy : Type w
  webStructure : Type x
  holonomyInvariant : Prop
  restrictedHolonomyClosed : Prop
  webCompatible : Prop

structure HolonomyWebEvidence (H : HolonomyWebPackage) where
  holonomyInvariantClosed : H.holonomyInvariant
  restrictedHolonomyClosedClosed : H.restrictedHolonomyClosed
  webCompatibleClosed : H.webCompatible

def HolonomyWebClosed (H : HolonomyWebPackage) : Prop :=
  H.holonomyInvariant ∧ H.restrictedHolonomyClosed ∧ H.webCompatible

theorem holonomy_web_closed_from_evidence (H : HolonomyWebPackage) (E : HolonomyWebEvidence H) : HolonomyWebClosed H := by
  exact And.intro E.holonomyInvariantClosed (And.intro E.restrictedHolonomyClosedClosed E.webCompatibleClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse