class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :governess

  # validates :location, presence: true
  # validates :checkin, presence: true
  # validates :checkout, presence: true
end
