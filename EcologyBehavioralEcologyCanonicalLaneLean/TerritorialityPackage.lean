import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure TerritorialityPackage where
  territorySize : Prop
  resourceDefense : Prop
  economicDefensibility : Prop
  dearEnemyEffect : Prop

structure TerritorialityEvidence (T : TerritorialityPackage) where
  territorySizeClosed : T.territorySize
  resourceDefenseClosed : T.resourceDefense
  economicDefensibilityClosed : T.economicDefensibility
  dearEnemyEffectClosed : T.dearEnemyEffect

def TerritorialityClosed (T : TerritorialityPackage) : Prop :=
  T.territorySize ∧ T.resourceDefense ∧ T.economicDefensibility ∧ T.dearEnemyEffect

theorem territoriality_closed_from_evidence (T : TerritorialityPackage) (E : TerritorialityEvidence T) : TerritorialityClosed T := by
  exact And.intro E.territorySizeClosed (And.intro E.resourceDefenseClosed (And.intro E.economicDefensibilityClosed E.dearEnemyEffectClosed))

end EcologyBehavioralEcology
end HautevilleHouse