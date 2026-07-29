import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure ForagingPackage (G : ResourceDistributionPackage) where
  optimalPatchUsage : Prop
  marginalValueTheorem : Prop
  patchLeavingRule : Prop
  dietBreadthModel : Prop
  preyRanking : Prop

structure ForagingEvidence {G : ResourceDistributionPackage} (F : ForagingPackage G) where
  optimalPatchUsageClosed : F.optimalPatchUsage
  marginalValueTheoremClosed : F.marginalValueTheorem
  patchLeavingRuleClosed : F.patchLeavingRule
  dietBreadthModelClosed : F.dietBreadthModel
  preyRankingClosed : F.preyRanking

def ForagingClosed {G : ResourceDistributionPackage} (F : ForagingPackage G) : Prop :=
  F.optimalPatchUsage ∧ F.marginalValueTheorem ∧ F.patchLeavingRule ∧ F.dietBreadthModel ∧ F.preyRanking

theorem foraging_closed_from_evidence {G : ResourceDistributionPackage} (F : ForagingPackage G) (E : ForagingEvidence F) : ForagingClosed F := by
  exact And.intro E.optimalPatchUsageClosed
    (And.intro E.marginalValueTheoremClosed
      (And.intro E.patchLeavingRuleClosed
        (And.intro E.dietBreadthModelClosed E.preyRankingClosed)))

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse