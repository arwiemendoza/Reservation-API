require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'association' do
    it { is_expected.to belong_to(:guest) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
    it { is_expected.to validate_presence_of(:nights) }
    it { is_expected.to validate_presence_of(:guests) }
    it { is_expected.to validate_presence_of(:adults) }
    it { is_expected.to validate_presence_of(:children) }
    it { is_expected.to validate_presence_of(:infants) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:currency) }
    it { is_expected.to validate_presence_of(:payout_price) }
    it { is_expected.to validate_presence_of(:security_price) }
    it { is_expected.to validate_presence_of(:total_price) }
  end
end
