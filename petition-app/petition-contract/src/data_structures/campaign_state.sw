library;

use core::ops::Eq;

pub enum CampaignState {
  /// The campaign has been canceled.
  Cancelled: (),
  /// The campaign was successful
  Successful: (),
  /// The campaign is still accepting funds.
  Progress: (),
}

impl Eq for CampaignState {
  // eq method
  fn eq(self, other: CampaignState) -> bool {
    match (self, other) {
      (CampaignState::Cancelled, CampaignState::Cancelled) => true,
      (CampaignState::Successful, CampaignState::Successful) => true,
      (CampaignState::Progress, CampaignState::Progress) => true,
      _ => false,
    }
  }
}
