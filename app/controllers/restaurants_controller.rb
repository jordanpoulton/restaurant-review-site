class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end


  def create
    @restaurant = Restaurant.new(params[:restaurant])
    debugger
    @restaurant.save
    redirect_to :action => 'index'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update_attributes(:name => params[:restaurant][:name])
    redirect_to :action => 'index'
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to :action => 'index'
  end
end
