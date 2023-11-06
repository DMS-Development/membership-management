FactoryBot.define do
  factory :membership do
    start_date { Time.zone.now }
    end_date { 1.year.from_now }
    is_active { Faker::Boolean.boolean }
    association :user
    association :membership_type
  end
end

