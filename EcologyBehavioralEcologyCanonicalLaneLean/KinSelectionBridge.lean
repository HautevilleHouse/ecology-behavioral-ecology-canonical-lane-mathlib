import EcologyBehavioralEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure KinSelectionPackage (A : AdmissibleClass) where
  relatedness : A.object.organism → A.object.organism → ℝ
  cost : A.object.organism → ℝ
  benefit : A.object.organism → ℝ
  hamiltonRule : Prop
  inclusiveFitness : Prop

structure KinSelectionEvidence {A : AdmissibleClass} (K : KinSelectionPackage A) where
  hamiltonRuleClosed : K.hamiltonRule
  inclusiveFitnessClosed : K.inclusiveFitness

def KinSelectionClosed {A : AdmissibleClass} (K : KinSelectionPackage A) : Prop :=
  K.hamiltonRule ∧ K.inclusiveFitness

theorem kin_selection_closed_from_evidence {A : AdmissibleClass}
    (K : KinSelectionPackage A) (E : KinSelectionEvidence K) :
    KinSelectionClosed K := by
  exact And.intro E.hamiltonRuleClosed E.inclusiveFitnessClosed

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse