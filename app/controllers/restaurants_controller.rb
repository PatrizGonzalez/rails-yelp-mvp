class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new # Needed to instantiate the form_with
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params[:restaurant]) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path, status: :see_other
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save # Will raise ActiveModel::ForbiddenAttributesError

  redirect_to restaurant_path(@restaurant)
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :rating)
end





end
