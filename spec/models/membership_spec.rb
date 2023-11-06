# spec/models/membership_spec.rb
require 'rails_helper'

RSpec.describe Membership, type: :model do
  it 'has a valid factory' do
    expect(create(:membership)).to be_valid
  end

  it 'is invalid without a start_date' do
    membership = build(:membership, start_date: nil)
    expect(membership).not_to be_valid
  end

  # Add more tests for other validations and methods...
end
