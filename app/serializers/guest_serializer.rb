class GuestSerializer < BaseSerializer
  attributes :id, :name, :email, :phone

  def name
    "#{object&.first_name} #{object&.last_name}"
  end
end
