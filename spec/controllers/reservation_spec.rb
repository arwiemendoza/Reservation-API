require 'rails_helper'

RSpec.describe ReservationsController, type: :controller do
  let(:valid_payload) do
    guest = build(:guest)
    reservation = build(:reservation, guest: guest)

    {
      guest_email: guest.email,
      guest_attributes: {
        first_name: guest.first_name,
        last_name: guest.last_name,
        phone_numbers: guest.phone_numbers
      },
      reservation_attributes: {
        code: reservation.code,
        start_date: reservation.start_date,
        end_date: reservation.end_date,
        nights: reservation.nights,
        guests: reservation.guests,
        status: reservation.status,
        currency: reservation.currency,
        payout_price: reservation.payout_price,
        security_price: reservation.security_price,
        total_price: reservation.total_price
      }
    }
  end

  let(:invalid_payload) do
    {
      guest_email: '',
      guest_attributes: {
        first_name: '',
        last_name: '',
        phone_numbers: []
      },
      reservation_attributes: {
        code: '',
        start_date: '',
        end_date: '',
        nights: 0,
        guests: 0,
        status: '',
        currency: '',
        payout_price: 0.00,
        security_price: 0.00,
        total_price: 0.00
      }
    }
  end

  describe 'Create Reservation' do
    context 'with valid payload' do
      it 'creates a new guest and reservation' do
        post :create, params: valid_payload

        expect(response).to have_http_status(:created)
        expect(json_response[:success]).to be true
        expect(json_response[:message]).to eq('Reservation was successfully created')
      end
    end

    context 'with invalid payload' do
      it 'returns errors for invalid guest and reservation' do
        post :create, params: invalid_payload

        expect(response).to have_http_status(:unprocessable_entity)
        expect(json_response[:success]).to be false
        expect(json_response[:error][:guest]).to be_present
        expect(json_response[:error][:reservation]).to be_present
      end
    end
  end

  private

  def json_response
    JSON.parse(response.body, symbolize_names: true)
  end
end
