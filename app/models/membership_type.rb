class MembershipType < ApplicationRecord
  has_many :memberships

  validates :name, :price, :duration, :description, :is_auto_renew, presence: true
  validates :name, uniqueness: true
  validates :price, :duration, numericality: { greater_than: 0 }
end
