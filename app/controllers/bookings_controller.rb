class BookingsController < ApplicationController
  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @user = User.find(params[:user_id])
    @governesses = Governess.find(params[:booking][:governess])
    @governesses.each do |governess|
      @booking = Booking.new(booking_params)
      @booking.user = @user
      @booking.governess = governess
      @booking.save
    end
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:location, :checkin, :checkout)
  end
end
