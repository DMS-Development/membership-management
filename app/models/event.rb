class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances

  validates :name, :description, :location, :date, :time, :max_participants, presence: true
  validates :max_participants, numericality: { only_integer: true, greater_than: 0 }
end
