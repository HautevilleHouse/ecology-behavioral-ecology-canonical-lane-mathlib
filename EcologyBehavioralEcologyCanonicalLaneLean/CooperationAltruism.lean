import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

struct CooperationAltruismPackage where
  relatedness : ℝ
  benefit : ℝ
  cost : ℝ
  inclusiveFitness : Prop
  reciprocalAltruism : Prop
  groupSelection : Prop

struct CooperationAltruismEvidence (P : CooperationAltruismPackage) where
  inclusiveFitnessClosed : P.inclusiveFitness
  reciprocalAltruismClosed : P.reciprocalAltruism
  groupSelectionClosed : P.groupSelection

def CooperationAltruismClosed (P : CooperationAltruismPackage) : Prop :=
  P.inclusiveFitness ∧ P.reciprocalAltruism ∧ P.groupSelection

theorem cooperation_altruism_closed_from_evidence (P : CooperationAltruismPackage) (E : CooperationAltruismEvidence P) :
    CooperationAltruismClosed P := by
  exact And.intro E.inclusiveFitnessClosed
    (And.intro E.reciprocalAltruismClosed E.groupSelectionClosed)

end EcologyBehavioralEcology
end HautevilleHouse