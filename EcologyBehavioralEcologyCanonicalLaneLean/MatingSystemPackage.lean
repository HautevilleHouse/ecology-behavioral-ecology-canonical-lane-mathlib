import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure MatingSystemPackage (G : SexualSelectionPackage) where
  mateChoiceCriteria : Prop
  sexualConflict : Prop
  parentalInvestment : Prop
  matingSystemType : Prop

structure MatingSystemEvidence {G : SexualSelectionPackage} (M : MatingSystemPackage G) where
  mateChoiceCriteriaClosed : M.mateChoiceCriteria
  sexualConflictClosed : M.sexualConflict
  parentalInvestmentClosed : M.parentalInvestment
  matingSystemTypeClosed : M.matingSystemType

def MatingSystemClosed {G : SexualSelectionPackage} (M : MatingSystemPackage G) : Prop :=
  M.mateChoiceCriteria ∧ M.sexualConflict ∧ M.parentalInvestment ∧ M.matingSystemType

theorem mating_system_closed_from_evidence {G : SexualSelectionPackage} (M : MatingSystemPackage G) (E : MatingSystemEvidence M) : MatingSystemClosed M := by
  exact And.intro E.mateChoiceCriteriaClosed
    (And.intro E.sexualConflictClosed
      (And.intro E.parentalInvestmentClosed E.matingSystemTypeClosed))

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse