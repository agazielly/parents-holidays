class UsersController < ApplicationController

  def dashboard
    @bookings = Booking.where(user_id: current_user)
  end
end
