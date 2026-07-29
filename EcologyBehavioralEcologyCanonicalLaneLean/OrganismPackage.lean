import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure OrganismPackage where
  organism : Type u
  behavior : Type v
  environment : Type w
  optimalityPrinciple : Prop
  tradeoffCurve : Prop

structure OrganismEvidence (O : OrganismPackage) where
  optimalityPrincipleClosed : O.optimalityPrinciple
  tradeoffCurveClosed : O.tradeoffCurve

def OrganismClosed (O : OrganismPackage) : Prop :=
  O.optimalityPrinciple ∧ O.tradeoffCurve

theorem organism_closed_from_evidence (O : OrganismPackage) (E : OrganismEvidence O) : OrganismClosed O := by
  exact And.intro E.optimalityPrincipleClosed E.tradeoffCurveClosed

end EcologyBehavioralEcology
end HautevilleHouse