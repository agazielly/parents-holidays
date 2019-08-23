class GovernessesController < ApplicationController

  def index
    if params[:query].present?
      @governesses = Governess.where("location ILIKE ? AND category ILIKE ?", "%#{params[:query]}%", "%#{params[:category]}%")
    else
      @governesses = Governess.all
    end
    @governesses_map = Governess.geocoded #returns flats with coordinates

    @markers = @governesses_map.map do |governess|
      {
        lat: governess.latitude,
        lng: governess.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { governess: governess })
        # image_url: helpers.asset_url('https://res.cloudinary.com/agazielly/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1566246427/joan-mm-EHuyA_oUCok-unsplash_ymnzy9.jpg')
      }
    end
  end

  def show
     @governess = Governess.find(params[:id])
  end

  def new
    @governess = Governess.new
    @governess.user = current_user
  end

  def create
    @governess = Governess.new(params_governess)
    @governess.user = current_user
    if @governess.save
      redirect_to governess_path(@governess)
    else
      render :new
    end
  end

  private

  def params_governess
    params.require(:governess).permit(:location, :description, :price)
  end
end
