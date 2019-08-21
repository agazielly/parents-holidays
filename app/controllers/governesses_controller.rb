class GovernessesController < ApplicationController

  def index
    @governesses = Governess.all
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
    params.require(:governess).permit(:location, :description, :price, :picture)
  end
end
