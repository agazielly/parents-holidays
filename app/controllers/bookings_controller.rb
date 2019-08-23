class BookingsController < ApplicationController
 def show
  @booking = Booking.find(params[:id])
  @governess = Governess.find(@booking.governess_id)
 end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.governess = Governess.find(params[:governess_id])
    if @booking.save
      redirect_to governesses_path
    else
      render 'governesses/show'
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  # def update
  #   @governess = Governess.find(params[:governess_id])
  #   @booking.user = current_user
  #   @booking.governess = Governess.find(params[:governess_id])
  #   @booking.update
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:location, :checkin, :checkout)
  end
end
