class Reservation < ApplicationRecord
  belongs_to :guest
  validates :start_date, :end_date, :nights, :guests, :adults, :children, :infants, :status, :currency, :payout_price, :security_price, :total_price, presence: true
end
