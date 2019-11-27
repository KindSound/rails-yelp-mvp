class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create

    @restaurant = Restaurant.find(params[:restaurant_id])
    if params[:review]

      content = params[:review][:content]
      rating = params[:review][:rating]
      restaurant = params[:restaurant_id]
      Review.create(restaurant_id: restaurant, rating: rating, content: content)
  else

    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save

  end
  redirect_to restaurant_path(id: @restaurant)
end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
