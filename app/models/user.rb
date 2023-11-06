class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses
  has_one :membership

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :phone_number, { with: /[0-9]/ }, length: { is: 10 }, allow_blank: false
end
