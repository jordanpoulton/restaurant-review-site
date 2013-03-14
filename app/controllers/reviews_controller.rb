class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # @review = Review.new
    @review = Review.create(params[:review]) do |r|
      r.restaurant_id = params[:restaurant_id]
    end
    # other option
    # @review.restaurant_id=params[:restaurant_id]
    # @review.text=params[:review][:text]
    # @review.save
    # or
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = @restaurant.build(params[:review])
    # @review.save
    # or
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @restaurant.reviews.create(params[:review])
    redirect_to restaurant_path(params[:restaurant_id])
  end


end
