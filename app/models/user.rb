class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :governesses
  has_many :governesses, through: :bookings
  has_many :bookings, through: :governesses

  validates :firstname, presence: true
  validates :lastname, presence: true
end
