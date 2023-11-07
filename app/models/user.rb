class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :attendances
  has_many :events, through: :attendances
  has_many :addresses
  has_one :membership
  accepts_nested_attributes_for :addresses, allow_destroy: true

  validates :email, presence: true
  validates :email, uniqueness: true
end
