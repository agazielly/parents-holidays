class Governess < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  has_many :bookings

  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
