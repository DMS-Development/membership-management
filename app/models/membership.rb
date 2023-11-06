class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :membership_type

  validates :start_date, :end_date, presence: true
end
