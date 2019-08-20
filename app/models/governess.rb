class Governess < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
