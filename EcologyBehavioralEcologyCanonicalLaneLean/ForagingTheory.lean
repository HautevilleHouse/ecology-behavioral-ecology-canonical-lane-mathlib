import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure OptimalForagingPackage where
  preyType : Type
  encounterRate : PreyType -> Prop
  handlingTime : PreyType -> Prop
  energyContent : PreyType -> Prop
  searchTime : Prop
  profitMaximization : Prop
  profitabilityRanking : Prop
  choiceRule : Prop
  profitabilityRankingClosed : profitabilityRanking
  choiceRuleClosed : choiceRule

structure OptimalForagingEvidence (O : OptimalForagingPackage) where
  encounterRateClosed : O.encounterRate
  handlingTimeClosed : O.handlingTime
  energyContentClosed : O.energyContent
  searchTimeClosed : O.searchTime
  profitMaximizationClosed : O.profitMaximization

def OptimalForagingClosed (O : OptimalForagingPackage) : Prop :=
  O.profitabilityRanking /
  O.choiceRule

theorem optimal_foraging_closed_from_evidence (O : OptimalForagingPackage) (E : OptimalForagingEvidence O) : OptimalForagingClosed O := by
  exact And.intro O.profitabilityRankingClosed O.choiceRuleClosed

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse
