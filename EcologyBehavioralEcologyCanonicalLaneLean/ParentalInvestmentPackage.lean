import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure ParentalInvestmentPackage where
  sexRoles : Type u
  matingSystem : Type v
  parentalCare : Prop
  tradeoffOffspring : Prop
  sexySonHypothesis : Prop

structure ParentalInvestmentEvidence (P : ParentalInvestmentPackage) where
  parentalCareClosed : P.parentalCare
  tradeoffOffspringClosed : P.tradeoffOffspring
  sexySonHypothesisClosed : P.sexySonHypothesis

def ParentalInvestmentClosed (P : ParentalInvestmentPackage) : Prop :=
  P.parentalCare ∧ P.tradeoffOffspring ∧ P.sexySonHypothesis

theorem parental_investment_closed_from_evidence (P : ParentalInvestmentPackage) (E : ParentalInvestmentEvidence P) : ParentalInvestmentClosed P := by
  exact And.intro E.parentalCareClosed (And.intro E.tradeoffOffspringClosed E.sexySonHypothesisClosed)

end EcologyBehavioralEcology
end HautevilleHouse