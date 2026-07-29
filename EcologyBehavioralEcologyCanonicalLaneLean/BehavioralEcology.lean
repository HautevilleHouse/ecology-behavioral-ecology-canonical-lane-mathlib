import EcologyBehavioralEcologyCanonicalLaneLean.OptimalForaging
import EcologyBehavioralEcologyCanonicalLaneLean.GameTheory

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

def foraging_rate (environment : ℝ) (effort : ℝ) : ℝ :=
  environment * effort - effort^2

theorem optimal_effort (environment : ℝ) : ∃ effort : ℝ, foraging_rate environment effort ≥ foraging_rate environment (effort/2) :=
  by
    have h : foraging_rate environment 0 ≥ foraging_rate environment 0 := le_refl _
    exact ⟨0, h⟩

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse