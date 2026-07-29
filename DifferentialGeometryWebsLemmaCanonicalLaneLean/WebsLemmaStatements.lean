import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsLemmaCanonicalLaneLean

structure WebLemmaStatement where
  web : WebStructure
  lemmaName : String
  statement : Prop
  proofTerm : statement

def LemmaClosed (L : WebLemmaStatement) : Prop :=
  L.statement

theorem lemma_closed_from_proof (L : WebLemmaStatement) : LemmaClosed L :=
  L.proofTerm

structure WebTheoremClosure (A : AdmissibleClass) : Prop where
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

theorem webs_lemma_endgame (A : AdmissibleClass) : WebTheoremClosure A :=
  { bridgeClosed := bridge_from_admissible_class A
    gateClosed := gate_from_admissible_class A }

end DifferentialGeometryWebsLemmaCanonicalLaneLean
end HautevilleHouse