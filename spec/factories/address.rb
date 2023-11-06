FactoryBot.define do
  factory :address do
    street { Faker::Address.street_address }
    street_two { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zipcode { Faker::Address.zip_code }
    association :user
  end
end# frozen_string_literal: true

