import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyBehavioralEcology.OrganismPackage
import HautevilleHouse.EcologyBehavioralEcology.OptimalForagingPackage
import HautevilleHouse.EcologyBehavioralEcology.GameTheoryPackage
import HautevilleHouse.EcologyBehavioralEcology.ParentalInvestmentPackage
import HautevilleHouse.EcologyBehavioralEcology.CooperationPackage
import HautevilleHouse.EcologyBehavioralEcology.TerritorialityPackage

namespace HautevilleHouse
namespace EcologyBehavioralEcology

structure EcologyAdmissibleClass where
  organism : OrganismPackage
  foraging : OptimalForagingPackage organism
  gameTheory : GameTheoryPackage
  parentalInvestment : ParentalInvestmentPackage
  cooperation : CooperationPackage
  territoriality : TerritorialityPackage

def ecologyAdmittedClosure (A : EcologyAdmissibleClass) : Prop :=
  OrganismClosed A.organism ∧ OptimalForagingClosed A.foraging ∧ GameTheoryClosed A.gameTheory ∧
  ParentalInvestmentClosed A.parentalInvestment ∧ CooperationClosed A.cooperation ∧ TerritorialityClosed A.territoriality

end EcologyBehavioralEcology
end HautevilleHouse