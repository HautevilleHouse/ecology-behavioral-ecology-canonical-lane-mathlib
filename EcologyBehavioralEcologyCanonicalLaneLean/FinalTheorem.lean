import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

def ConstrainedEcologyBehavioralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A /
  gateClosed A

theorem constrained_ecology_behavioral_endgame (A : AdmissibleClass) : ConstrainedEcologyBehavioralClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse
