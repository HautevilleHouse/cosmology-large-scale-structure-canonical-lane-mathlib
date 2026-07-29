import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructure

structure FLRWBackgroundPackage where
  scaleFactor : Type u
  hubbleParameter : Type v
  matterDensity : Type w
  radiationDensity : Type x
  darkEnergyDensity : Type y
  curvatureParameter : Type z
  friedmannEquations : Prop
  conservationLaws : Prop

structure FLRWBackgroundEvidence (B : FLRWBackgroundPackage) where
  friedmannEquationsClosed : B.friedmannEquations
  conservationLawsClosed : B.conservationLaws

def FLRWBackgroundClosed (B : FLRWBackgroundPackage) : Prop :=
  B.friedmannEquations ∧ B.conservationLaws

theorem flrw_background_closed_from_evidence (B : FLRWBackgroundPackage)
    (E : FLRWBackgroundEvidence B) : FLRWBackgroundClosed B := by
  exact And.intro E.friedmannEquationsClosed E.conservationLawsClosed

end CosmologyLargeScaleStructure
end HautevilleHouse
