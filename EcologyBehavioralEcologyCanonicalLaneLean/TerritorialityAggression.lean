import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

struct TerritorialityAggressionPackage where
  resourceValue : ℝ
  fightingAbility : ℝ
  ownerAdvantage : ℝ
  sequentialAssessmentModel : Prop
  warOfAttrition : Prop
  hawkDoveGame : Prop
  bourgeoisStrategy : Prop

struct TerritorialityAggressionEvidence (P : TerritorialityAggressionPackage) where
  sequentialAssessmentModelClosed : P.sequentialAssessmentModel
  warOfAttritionClosed : P.warOfAttrition
  hawkDoveGameClosed : P.hawkDoveGame
  bourgeoisStrategyClosed : P.bourgeoisStrategy

def TerritorialityAggressionClosed (P : TerritorialityAggressionPackage) : Prop :=
  P.sequentialAssessmentModel ∧ P.warOfAttrition ∧ P.hawkDoveGame ∧ P.bourgeoisStrategy

theorem territoriality_aggression_closed_from_evidence (P : TerritorialityAggressionPackage) (E : TerritorialityAggressionEvidence P) :
    TerritorialityAggressionClosed P := by
  exact And.intro E.sequentialAssessmentModelClosed
    (And.intro E.warOfAttritionClosed
      (And.intro E.hawkDoveGameClosed E.bourgeoisStrategyClosed))

end EcologyBehavioralEcology
end HautevilleHouse