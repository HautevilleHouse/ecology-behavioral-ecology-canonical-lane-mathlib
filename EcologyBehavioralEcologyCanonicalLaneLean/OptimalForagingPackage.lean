import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyBehavioralEcology.OrganismPackage

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure OptimalForagingPackage {O : OrganismPackage} where
  energyMaximization : Prop
  timeMinimization : Prop
  patchDepartureRule : Prop
  marginalValueTheorem : Prop

structure OptimalForagingEvidence {O : OrganismPackage} (F : OptimalForagingPackage O) where
  energyMaximizationClosed : F.energyMaximization
  timeMinimizationClosed : F.timeMinimization
  patchDepartureRuleClosed : F.patchDepartureRule
  marginalValueTheoremClosed : F.marginalValueTheorem

def OptimalForagingClosed {O : OrganismPackage} (F : OptimalForagingPackage O) : Prop :=
  F.energyMaximization ∧ F.timeMinimization ∧ F.patchDepartureRule ∧ F.marginalValueTheorem

theorem optimal_foraging_closed_from_evidence {O : OrganismPackage} (F : OptimalForagingPackage O) (E : OptimalForagingEvidence F) : OptimalForagingClosed F := by
  exact And.intro E.energyMaximizationClosed (And.intro E.timeMinimizationClosed (And.intro E.patchDepartureRuleClosed E.marginalValueTheoremClosed))

end EcologyBehavioralEcology
end HautevilleHouse