import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

struct MateChoiceSignalingPackage where
  signalCost : ℝ
  receiverPreference : ℝ → ℝ
  honestSignalingEquilibrium : Prop
  handicapPrinciple : Prop
  runawaySelection : Prop

struct MateChoiceSignalingEvidence (P : MateChoiceSignalingPackage) where
  honestSignalingEquilibriumClosed : P.honestSignalingEquilibrium
  handicapPrincipleClosed : P.handicapPrinciple
  runawaySelectionClosed : P.runawaySelection

def MateChoiceSignalingClosed (P : MateChoiceSignalingPackage) : Prop :=
  P.honestSignalingEquilibrium ∧ P.handicapPrinciple ∧ P.runawaySelection

theorem mate_choice_signaling_closed_from_evidence (P : MateChoiceSignalingPackage) (E : MateChoiceSignalingEvidence P) :
    MateChoiceSignalingClosed P := by
  exact And.intro E.honestSignalingEquilibriumClosed
    (And.intro E.handicapPrincipleClosed E.runawaySelectionClosed)

end EcologyBehavioralEcology
end HautevilleHouse