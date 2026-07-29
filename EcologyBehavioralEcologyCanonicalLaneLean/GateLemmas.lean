import EcologyBehavioralEcologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.equilibriumCondition ∨ A.stabilityMargin

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse