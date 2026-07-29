import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

struct HabitatSelectionDispersalPackage where
  habitatQuality : ℝ → ℝ
  conspecificAttraction : ℝ
  competitionAvoidance : ℝ
  idealFreeDistribution : Prop
  idealDespoticDistribution : Prop
  dispersalCost : ℝ
  philopatryBenefit : ℝ

struct HabitatSelectionDispersalEvidence (P : HabitatSelectionDispersalPackage) where
  idealFreeDistributionClosed : P.idealFreeDistribution
  idealDespoticDistributionClosed : P.idealDespoticDistribution

def HabitatSelectionDispersalClosed (P : HabitatSelectionDispersalPackage) : Prop :=
  P.idealFreeDistribution ∧ P.idealDespoticDistribution

theorem habitat_selection_dispersal_closed_from_evidence (P : HabitatSelectionDispersalPackage) (E : HabitatSelectionDispersalEvidence P) :
    HabitatSelectionDispersalClosed P := by
  exact And.intro E.idealFreeDistributionClosed E.idealDespoticDistributionClosed

end EcologyBehavioralEcology
end HautevilleHouse