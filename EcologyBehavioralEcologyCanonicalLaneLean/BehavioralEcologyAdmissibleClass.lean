import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyBehavioralEcologyCanonicalLaneLean

structure BehavioralEcologyAdmittedObject where
  organism : Type
  traitSpace : Type
  payoffFunction : traitSpace → ℝ
  behavioralStrategy : traitSpace
  
structure AdmissibleClass where
  object : BehavioralEcologyAdmittedObject
  equilibriumCondition : Prop
  stabilityMargin : Prop
  gateWitness : equilibriumCondition ∨ stabilityMargin

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.equilibriumCondition ∧ A.stabilityMargin) ∨ A.gateWitness

end EcologyBehavioralEcologyCanonicalLaneLean
end HautevilleHouse