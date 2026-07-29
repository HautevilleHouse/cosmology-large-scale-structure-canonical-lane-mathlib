import HautevilleHouse.CosmologyLargeScaleStructureCanonicalLaneLean.AdmissibleClass

/-!
# Large Scale Structure Fields Package
-/

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure DensityField where
  fid : Type u
  smooth : Prop
  overdensityDefinition : Prop
  powerSpectrumDefined : Prop

structure VelocityField where
  vel : Type u
  divergenceField : Prop
  vorticityField : Prop
  linearTheoryValid : Prop

structure LargeScaleStructureFields where
  density : DensityField
  velocity : VelocityField
  metricPerturbations : Prop
  backgroundFLRW : Prop

structure FieldsEvidence (F : LargeScaleStructureFields) where
  densitySmoothClosed : F.density.smooth
  overdensityDefinitionClosed : F.density.overdensityDefinition
  powerSpectrumDefinedClosed : F.density.powerSpectrumDefined
  velocityDivergenceClosed : F.velocity.divergenceField
  velocityVorticityClosed : F.velocity.vorticityField
  linearTheoryValidClosed : F.velocity.linearTheoryValid
  metricPerturbationsClosed : F.metricPerturbations
  backgroundFLRWClosed : F.backgroundFLRW

def FieldsClosed (F : LargeScaleStructureFields) : Prop :=
  F.density.smooth ∧ F.density.overdensityDefinition ∧
  F.density.powerSpectrumDefined ∧ F.velocity.divergenceField ∧
  F.velocity.vorticityField ∧ F.velocity.linearTheoryValid ∧
  F.metricPerturbations ∧ F.backgroundFLRW

theorem fields_closed_from_evidence (F : LargeScaleStructureFields) (E : FieldsEvidence F) :
    FieldsClosed F := by
  exact And.intro E.densitySmoothClosed
    (And.intro E.overdensityDefinitionClosed
      (And.intro E.powerSpectrumDefinedClosed
        (And.intro E.velocityDivergenceClosed
          (And.intro E.velocityVorticityClosed
            (And.intro E.linearTheoryValidClosed
              (And.intro E.metricPerturbationsClosed
                E.backgroundFLRWClosed))))))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse
