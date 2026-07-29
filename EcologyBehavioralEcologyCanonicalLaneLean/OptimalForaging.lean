import EcologyBehavioralEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure PreyPatch where
  energy : ℝ
  handlingTime : ℝ
  encounterRate : ℝ

structure PredatorDiet where
  patches : List PreyPatch
  fitness : ℝ

theorem optimal_diet_choice (p : PredatorDiet) : Prop :=
  p.fitness > 0

theorem patch_selection (p : PredatorDiet) : Prop :=
  p.patches.length > 0

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse