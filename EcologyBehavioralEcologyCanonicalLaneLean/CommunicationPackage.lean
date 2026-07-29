import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure CommunicationPackage (G : SignalEcologyPackage) where
  signalDesign : Prop
  honestSignaling : Prop
  receiverPsychology : Prop
  eavesdropping : Prop

structure CommunicationEvidence {G : SignalEcologyPackage} (C : CommunicationPackage G) where
  signalDesignClosed : C.signalDesign
  honestSignalingClosed : C.honestSignaling
  receiverPsychologyClosed : C.receiverPsychology
  eavesdroppingClosed : C.eavesdropping

def CommunicationClosed {G : SignalEcologyPackage} (C : CommunicationPackage G) : Prop :=
  C.signalDesign ∧ C.honestSignaling ∧ C.receiverPsychology ∧ C.eavesdropping

theorem communication_closed_from_evidence {G : SignalEcologyPackage} (C : CommunicationPackage G) (E : CommunicationEvidence C) : CommunicationClosed C := by
  exact And.intro E.signalDesignClosed
    (And.intro E.honestSignalingClosed
      (And.intro E.receiverPsychologyClosed E.eavesdroppingClosed))

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse