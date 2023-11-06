# spec/models/membership_type_spec.rb
require 'rails_helper'

RSpec.describe MembershipType, type: :model do
  it 'has a valid factory' do
    expect(create(:membership_type)).to be_valid
  end

  it 'is invalid without a name' do
    membership_type = build(:membership_type, name: nil)
    expect(membership_type).not_to be_valid
  end

  # Add more tests for other validations...
end
