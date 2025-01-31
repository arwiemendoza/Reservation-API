require 'rails_helper'

RSpec.describe Guest, type: :model do
  describe 'association' do
    it { is_expected.to have_many(:reservations).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end
end
