import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcology

struct SocialLearningCulturePackage where
  socialTransmission : Type
  conformityBias : ℝ
  prestigeBias : ℝ
  successBias : ℝ
  cumulativeCulture : Prop
  innovationRate : ℝ
  adaptiveTradeoff : Prop

struct SocialLearningCultureEvidence (P : SocialLearningCulturePackage) where
  cumulativeCultureClosed : P.cumulativeCulture
  adaptiveTradeoffClosed : P.adaptiveTradeoff

def SocialLearningCultureClosed (P : SocialLearningCulturePackage) : Prop :=
  P.cumulativeCulture ∧ P.adaptiveTradeoff

theorem social_learning_culture_closed_from_evidence (P : SocialLearningCulturePackage) (E : SocialLearningCultureEvidence P) :
    SocialLearningCultureClosed P := by
  exact And.intro E.cumulativeCultureClosed E.adaptiveTradeoffClosed

end EcologyBehavioralEcology
end HautevilleHouse