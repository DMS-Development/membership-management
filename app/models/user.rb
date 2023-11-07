class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attendances
  has_many :events, through: :attendances
  has_many :addresses
  has_one :membership
  accepts_nested_attributes_for :addresses, allow_destroy: true

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :phone_number, format: { with: /\A\d{10}\z/  }, length: { is: 10 }, allow_blank: false
end
