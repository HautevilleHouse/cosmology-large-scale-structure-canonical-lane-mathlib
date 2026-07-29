import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyLargeScaleStructureCanonicalLaneLean

structure CosmicMicrowaveBackgroundPackage where
  temperatureFluctuations : Prop
  powerSpectrumMultipoles : Prop
  acousticPeaksResolved : Prop
  polarizationDetected : Prop

structure CosmicMicrowaveBackgroundEvidence (C : CosmicMicrowaveBackgroundPackage) where
  temperatureFluctuationsClosed : C.temperatureFluctuations
  powerSpectrumMultipolesClosed : C.powerSpectrumMultipoles
  acousticPeaksResolvedClosed : C.acousticPeaksResolved
  polarizationDetectedClosed : C.polarizationDetected

def CosmicMicrowaveBackgroundClosed (C : CosmicMicrowaveBackgroundPackage) : Prop :=
  C.temperatureFluctuations ∧ C.powerSpectrumMultipoles ∧ C.acousticPeaksResolved ∧ C.polarizationDetected

theorem cmb_closed_from_evidence (C : CosmicMicrowaveBackgroundPackage) (E : CosmicMicrowaveBackgroundEvidence C) :
    CosmicMicrowaveBackgroundClosed C := by
  exact And.intro E.temperatureFluctuationsClosed (And.intro E.powerSpectrumMultipolesClosed (And.intro E.acousticPeaksResolvedClosed E.polarizationDetectedClosed))

end CosmologyLargeScaleStructureCanonicalLaneLean
end HautevilleHouse