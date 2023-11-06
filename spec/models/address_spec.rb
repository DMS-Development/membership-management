# spec/models/address_spec.rb
require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'has a valid factory' do
    expect(create(:address)).to be_valid
  end

  it 'is invalid without a street' do
    address = build(:address, street: nil)
    expect(address).not_to be_valid
  end

  # Add more tests for city, state, zip, and user association...
end
