class Address < ApplicationRecord
  belongs_to :user

validates :street, :city, :state, :zipcode, presence: true
end
