import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructure

structure BaryonAcousticOscillationsPackage where
  soundHorizon : Prop
  peakSignature : Prop
  distanceRedshiftRelation : Prop
  standardRuler : Prop

structure BaryonAcousticOscillationsEvidence (B : BaryonAcousticOscillationsPackage) where
  soundHorizonClosed : B.soundHorizon
  peakSignatureClosed : B.peakSignature
  distanceRedshiftRelationClosed : B.distanceRedshiftRelation
  standardRulerClosed : B.standardRuler

def BaryonAcousticOscillationsClosed (B : BaryonAcousticOscillationsPackage) : Prop :=
  B.soundHorizon ∧ B.peakSignature ∧ B.distanceRedshiftRelation ∧ B.standardRuler

theorem baryon_acoustic_oscillations_closed_from_evidence
    (B : BaryonAcousticOscillationsPackage)
    (E : BaryonAcousticOscillationsEvidence B) : BaryonAcousticOscillationsClosed B := by
  exact And.intro E.soundHorizonClosed
    (And.intro E.peakSignatureClosed
      (And.intro E.distanceRedshiftRelationClosed E.standardRulerClosed))

end CosmologyLargeScaleStructure
end HautevilleHouse
