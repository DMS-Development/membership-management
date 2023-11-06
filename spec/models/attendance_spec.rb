# spec/models/attendance_spec.rb
require 'rails_helper'

RSpec.describe Attendance, type: :model do
  it 'has a valid factory' do
    expect(create(:attendance)).to be_valid
  end

  it 'is invalid without a user' do
    attendance = build(:attendance, user: nil)
    expect(attendance).not_to be_valid
  end

  it 'is invalid without an event' do
    attendance = build(:attendance, event: nil)
    expect(attendance).not_to be_valid
  end

  # Test for uniqueness of user_id scoped to event_id...
end
