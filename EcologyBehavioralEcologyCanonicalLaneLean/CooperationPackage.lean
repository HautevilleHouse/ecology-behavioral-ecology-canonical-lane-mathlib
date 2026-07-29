import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure CooperationPackage where
  individuals : Type u
  repeatedInteractions : Prop
  kinSelection : Prop
  reciprocalAltruism : Prop
  byproductMutualism : Prop

structure CooperationEvidence (C : CooperationPackage) where
  repeatedInteractionsClosed : C.repeatedInteractions
  kinSelectionClosed : C.kinSelection
  reciprocalAltruismClosed : C.reciprocalAltruism
  byproductMutualismClosed : C.byproductMutualism

def CooperationClosed (C : CooperationPackage) : Prop :=
  C.repeatedInteractions ∧ C.kinSelection ∧ C.reciprocalAltruism ∧ C.byproductMutualism

theorem cooperation_closed_from_evidence (C : CooperationPackage) (E : CooperationEvidence C) : CooperationClosed C := by
  exact And.intro E.repeatedInteractionsClosed (And.intro E.kinSelectionClosed (And.intro E.reciprocalAltruismClosed E.byproductMutualismClosed))

end EcologyBehavioralEcology
end HautevilleHouse