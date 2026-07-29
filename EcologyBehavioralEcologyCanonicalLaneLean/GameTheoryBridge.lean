import EcologyBehavioralEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure GameTheoryPackage (A : AdmissibleClass) where
  strategies : Set (A.object.organism)
  payoffMatrix : A.object.organism → A.object.organism → ℝ
  nashEquilibrium : Set (A.object.organism)
  evolutionaryStableState : Prop
  replicatorDynamics : Prop

structure GameTheoryEvidence {A : AdmissibleClass} (G : GameTheoryPackage A) where
  nashEquilibriumClosed : G.nashEquilibrium.Nonempty
  evolutionaryStableStateClosed : G.evolutionaryStableState
  replicatorDynamicsClosed : G.replicatorDynamics

def GameTheoryClosed {A : AdmissibleClass} (G : GameTheoryPackage A) : Prop :=
  G.nashEquilibrium.Nonempty ∧ G.evolutionaryStableState ∧ G.replicatorDynamics

theorem game_theory_closed_from_evidence {A : AdmissibleClass}
    (G : GameTheoryPackage A) (E : GameTheoryEvidence G) :
    GameTheoryClosed G := by
  exact And.intro E.nashEquilibriumClosed
    (And.intro E.evolutionaryStableStateClosed E.replicatorDynamicsClosed)

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse