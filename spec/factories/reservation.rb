FactoryBot.define do
  factory :reservation do
    code { Faker::Alphanumeric.unique.alphanumeric(number: 6).upcase }
    start_date { Faker::Date.between(from: 1.month.from_now, to: 2.years.from_now) }
    end_date { start_date + rand(1..14).days }
    nights { (end_date - start_date).to_i }
    guests { rand(1..10) }
    status { ['accepted', 'pending', 'canceled'].sample }
    currency { ['USD', 'EUR', 'GBP', 'JPY'].sample }
    payout_price { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    security_price { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    total_price { payout_price + security_price }
    guest
  end
end
