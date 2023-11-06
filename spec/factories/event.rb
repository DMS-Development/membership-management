FactoryBot.define do
  factory :event do
    name { Faker::Lorem.words(number: 3).join(' ') }
    description { Faker::Lorem.paragraph }
    date { Faker::Date.forward(days: 23) }
    time { Faker::Time.forward(days: 23, period: :evening) }
    location { Faker::Address.full_address }
    max_participants { Faker::Number.between(from: 10, to: 100) }
  end
end