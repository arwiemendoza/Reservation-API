class ReservationsController < ApplicationController
  include PayloadParser
  include Spiels

  before_action :parse_payload, only: :create

  def create
    guest = Guest.find_or_initialize_by email: @payload[:guest_email]
    guest.assign_attributes @payload[:guest_attributes] if @payload[:guest_attributes]

    reservation = guest.reservations.build @payload[:reservation_attributes]

    if guest.save && reservation.save
      render json: { success: true, message: format(SUCCESSFUL_ACTION, item: 'Reservation', action: 'created') }, status: :created
    else
      render json: { success: false, error: { guest: guest.errors, reservation: reservation.errors } }, status: :unprocessable_entity
    end
  end
end
