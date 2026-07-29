import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure BehavioralGamePackage where
  playerCount : Nat
  strategySet : Type
  payoffFunction : strategySet -> strategySet -> Nat
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop
  frequencyDependence : Prop
  nashEquilibriumClosed : nashEquilibrium
  evolutionaryStableStrategyClosed : evolutionaryStableStrategy
  frequencyDependenceClosed : frequencyDependence

structure BehavioralGameEvidence (B : BehavioralGamePackage) where
  nashEquilibriumClosed : B.nashEquilibrium
  evolutionaryStableStrategyClosed : B.evolutionaryStableStrategy
  frequencyDependenceClosed : B.frequencyDependence

def BehavioralGameClosed (B : BehavioralGamePackage) : Prop :=
  B.nashEquilibrium /
  B.evolutionaryStableStrategy /
  B.frequencyDependence

theorem behavioral_game_closed_from_evidence (B : BehavioralGamePackage) (E : BehavioralGameEvidence B) : BehavioralGameClosed B := by
  exact And.intro E.nashEquilibriumClosed (And.intro E.evolutionaryStableStrategyClosed E.frequencyDependenceClosed)

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse
