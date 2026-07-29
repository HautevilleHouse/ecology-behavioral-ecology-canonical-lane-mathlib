import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

struct ForagingStrategy where
  patchChoice : Type
  handlingTime : ℕ → ℝ
  searchEfficiency : ℝ
  dietBreadth : List String
  marginalValue : ℝ → ℝ

struct OptimalForagingPackage where
  strategy : ForagingStrategy
  energyMaximization : Prop
  timeMinimization : Prop
  preyChoiceRule : Prop
  patchResidenceRule : Prop
  riskSensitivity : Prop

struct OptimalForagingEvidence (P : OptimalForagingPackage) where
  energyMaximizationClosed : P.energyMaximization
  timeMinimizationClosed : P.timeMinimization
  preyChoiceRuleClosed : P.preyChoiceRule
  patchResidenceRuleClosed : P.patchResidenceRule
  riskSensitivityClosed : P.riskSensitivity

def OptimalForagingClosed (P : OptimalForagingPackage) : Prop :=
  P.energyMaximization ∧ P.timeMinimization ∧ P.preyChoiceRule ∧ P.patchResidenceRule ∧ P.riskSensitivity

theorem optimal_foraging_closed_from_evidence (P : OptimalForagingPackage) (E : OptimalForagingEvidence P) :
    OptimalForagingClosed P := by
  exact And.intro E.energyMaximizationClosed
    (And.intro E.timeMinimizationClosed
      (And.intro E.preyChoiceRuleClosed
        (And.intro E.patchResidenceRuleClosed E.riskSensitivityClosed)))

end EcologyBehavioralEcology
end HautevilleHouse