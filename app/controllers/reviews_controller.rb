class ReviewsController < ApplicationController

  # def new
  #   @venue = Venue.find(params[:venue_id])
  #   @review = Review.new
  # end

  def create
    @venue = Venue.find(params[:venue_id])
    @review = Review.new(review_params)
    @review.venue = @venue
    @review.user = current_user
    if @review.save
      # redirect_to Something_path
    else
      render 'venue/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end