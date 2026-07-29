import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructure

structure DarkMatterHaloModelPackage where
  densityProfile : Prop
  massFunction : Prop
  biasModel : Prop
  substructure : Prop

structure DarkMatterHaloModelEvidence (D : DarkMatterHaloModelPackage) where
  densityProfileClosed : D.densityProfile
  massFunctionClosed : D.massFunction
  biasModelClosed : D.biasModel
  substructureClosed : D.substructure

def DarkMatterHaloModelClosed (D : DarkMatterHaloModelPackage) : Prop :=
  D.densityProfile ∧ D.massFunction ∧ D.biasModel ∧ D.substructure

theorem dark_matter_halo_model_closed_from_evidence
    (D : DarkMatterHaloModelPackage)
    (E : DarkMatterHaloModelEvidence D) : DarkMatterHaloModelClosed D := by
  exact And.intro E.densityProfileClosed
    (And.intro E.massFunctionClosed
      (And.intro E.biasModelClosed E.substructureClosed))

end CosmologyLargeScaleStructure
end HautevilleHouse
