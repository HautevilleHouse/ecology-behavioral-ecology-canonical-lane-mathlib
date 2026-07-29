import EcologyBehavioralEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure SignalEvolutionPackage (A : AdmissibleClass) where
  signalType : Type
  sender : A.object.organism
  receiver : A.object.organism
  costSignal : ℝ
  benefitReceiver : ℝ
  honestSignaling : Prop
  handicapPrinciple : Prop

structure SignalEvolutionEvidence {A : AdmissibleClass} (S : SignalEvolutionPackage A) where
  honestSignalingClosed : S.honestSignaling
  handicapPrincipleClosed : S.handicapPrinciple

def SignalEvolutionClosed {A : AdmissibleClass} (S : SignalEvolutionPackage A) : Prop :=
  S.honestSignaling ∧ S.handicapPrinciple

theorem signal_evolution_closed_from_evidence {A : AdmissibleClass}
    (S : SignalEvolutionPackage A) (E : SignalEvolutionEvidence S) :
    SignalEvolutionClosed S := by
  exact And.intro E.honestSignalingClosed E.handicapPrincipleClosed

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse