module PayloadParser
  def parse_payload
    params[:guest].present? ? parse_guest_payload : parse_reservation_payload
  end

  private

  def parse_reservation_payload
    reservation_params = params[:reservation]

    @payload = {
      guest_email: reservation_params[:guest_email],
      guest_attributes: {
        first_name: reservation_params[:guest_first_name],
        last_name: reservation_params[:guest_last_name],
        phone: reservation_params[:guest_phone_numbers]&.first,
      },
      reservation_attributes: {
        start_date: reservation_params[:start_date],
        end_date: reservation_params[:end_date],
        nights: reservation_params[:nights],
        guests: reservation_params[:number_of_guests],
        adults: reservation_params[:guest_details][:number_of_adults],
        children: reservation_params[:guest_details][:number_of_children],
        infants: reservation_params[:guest_details][:number_of_infants],
        status: reservation_params[:status_type],
        currency: reservation_params[:host_currency],
        payout_price: reservation_params[:expected_payout_amount],
        security_price: reservation_params[:listing_security_price_accurate],
        total_price: reservation_params[:total_paid_amount_accurate]
      }
    }
  end

  def parse_guest_payload
    guest_params = params[:guest]

    @payload = {
      guest_email: guest_params[:email],
      guest_attributes: {
        first_name: guest_params[:first_name],
        last_name: guest_params[:last_name],
        phone: guest_params[:phone],
      },
      reservation_attributes: {
        start_date: params[:start_date],
        end_date: params[:end_date],
        nights: params[:nights],
        guests: params[:guests],
        adults: params[:adults],
        children: params[:children],
        infants: params[:infants],
        status: params[:status],
        currency: params[:currency],
        payout_price: params[:payout_price],
        security_price: params[:security_price],
        total_price: params[:total_price]
      }
    }
  end
end
