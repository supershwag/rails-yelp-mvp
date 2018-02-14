class RestaurantsController < ApplicationController

#list of restaurants
  def index
    @restaurants = Restaurant.all
  end

#display one restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
  end

#add a new restaurant

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end





end
