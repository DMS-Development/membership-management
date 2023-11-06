# spec/models/event_spec.rb
require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'has a valid factory' do
    expect(create(:event)).to be_valid
  end

  it 'is invalid without a name' do
    event = build(:event, name: nil)
    expect(event).not_to be_valid
  end

  # Add more tests for other validations...
end
