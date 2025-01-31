class ReservationSerializer < BaseSerializer
  attributes  :id, :status, :nights, :start_date, :end_date, :guest_details, :pricing_details, :created_at, :updated_at

  def start_date
    format_date object&.start_date, '%B %d, %Y'
  end

  def end_date
    format_date object&.end_date, '%B %d, %Y'
  end

  def guest_details
    {
      number_of_adults: object&.adults,
      number_of_children: object&.children,
      number_of_infants: object&.infants,
      number_of_guests: object&.guests
    }
  end

  def pricing_details
    {
      currency: object&.currency,
      payout_price: object&.payout_price,
      security_price: object&.security_price,
      total_price: object&.total_price
    }
  end
end
