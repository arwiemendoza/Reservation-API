FactoryBot.define do
  factory :guest do
    email { Faker::Internet.unique.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_numbers { [Faker::PhoneNumber.phone_number] }
  end
end
