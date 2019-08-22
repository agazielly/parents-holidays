class UsersController < ApplicationController

  def dashboard
    @locations = current_user.bookings.group_by(&:location)
  end
end
