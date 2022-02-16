class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
    # @restaurant = Restaurant.new(params[:restaurant])
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # redirect_to restaurant_review_path(@restaurant, @review)
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
