import Mathlib.Geometry.Manifold.IndexTheorem

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebIndexTheoremPackage where
  webEllipticOperator : Type u
  indexBundle : Type v
  chernCharacter : Type w
  toddClass : Type x
  indexFormula : Prop
  chernCharacterDefined : Prop
  toddClassDefined : Prop
  indexFormulaTerm : indexFormula
  chernCharacterDefinedTerm : chernCharacterDefined
  toddClassDefinedTerm : toddClassDefined

structure WebIndexTheoremEvidence (I : WebIndexTheoremPackage) where
  indexFormulaClosed : I.indexFormula
  chernCharacterDefinedClosed : I.chernCharacterDefined
  toddClassDefinedClosed : I.toddClassDefined

def WebIndexTheoremClosed (I : WebIndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.chernCharacterDefined ∧ I.toddClassDefined

theorem web_index_theorem_closed_from_evidence (I : WebIndexTheoremPackage) (E : WebIndexTheoremEvidence I) : WebIndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed (And.intro E.chernCharacterDefinedClosed E.toddClassDefinedClosed)

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse