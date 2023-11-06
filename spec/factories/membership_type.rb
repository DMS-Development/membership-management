FactoryBot.define do
  factory :membership_type do
    name { Faker::Subscription.plan }
    description { Faker::Lorem.paragraph }
    duration { Faker::Number.between(from: 1, to: 12) } # assuming duration is in months
    price { Faker::Commerce.price(range: 10..100) }
    is_auto_renew { true }
  end
end


