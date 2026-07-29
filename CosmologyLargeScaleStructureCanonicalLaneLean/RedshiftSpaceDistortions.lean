import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructure

structure RedshiftSpaceDistortionsPackage where
  kaiserEffect : Prop
  fingerOfGod : Prop
  linearModel : Prop
  nonLinearCorrections : Prop

structure RedshiftSpaceDistortionsEvidence (R : RedshiftSpaceDistortionsPackage) where
  kaiserEffectClosed : R.kaiserEffect
  fingerOfGodClosed : R.fingerOfGod
  linearModelClosed : R.linearModel
  nonLinearCorrectionsClosed : R.nonLinearCorrections

def RedshiftSpaceDistortionsClosed (R : RedshiftSpaceDistortionsPackage) : Prop :=
  R.kaiserEffect ∧ R.fingerOfGod ∧ R.linearModel ∧ R.nonLinearCorrections

theorem redshift_space_distortions_closed_from_evidence
    (R : RedshiftSpaceDistortionsPackage)
    (E : RedshiftSpaceDistortionsEvidence R) : RedshiftSpaceDistortionsClosed R := by
  exact And.intro E.kaiserEffectClosed
    (And.intro E.fingerOfGodClosed
      (And.intro E.linearModelClosed E.nonLinearCorrectionsClosed))

end CosmologyLargeScaleStructure
end HautevilleHouse
