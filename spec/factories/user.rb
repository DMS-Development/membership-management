FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    encrypted_password { Devise::Encryptor.digest(User, 'password') }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::Number.number(digits: 10).to_s }
  end
end

