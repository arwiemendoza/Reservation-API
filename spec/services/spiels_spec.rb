require 'rails_helper'

RSpec.describe Spiels do
  describe 'successful spiel' do
    it 'returns the correct message format' do
      message = Spiels::SUCCESSFUL_ACTION % { item: 'Reservation', action: 'created' }
      expect(message).to eq('Reservation successfully created')
    end
  end
end
