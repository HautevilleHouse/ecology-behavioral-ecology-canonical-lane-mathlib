import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure GameTheoryPackage where
  players : Type u
  strategies : Type v
  payoffMatrix : Type w
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop

structure GameTheoryEvidence (G : GameTheoryPackage) where
  nashEquilibriumClosed : G.nashEquilibrium
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.nashEquilibrium ∧ G.evolutionaryStableStrategy

theorem game_theory_closed_from_evidence (G : GameTheoryPackage) (E : GameTheoryEvidence G) : GameTheoryClosed G := by
  exact And.intro E.nashEquilibriumClosed E.evolutionaryStableStrategyClosed

end EcologyBehavioralEcology
end HautevilleHouse