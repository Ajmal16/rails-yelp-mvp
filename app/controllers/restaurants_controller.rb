class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    # /restaurants/42 -> params[:id] == 42
    @restaurant = Restaurant.find(params[:id])
  end
end
