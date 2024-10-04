class ReviewsController < ApplicationController
  def create
    # find the car by its id
    @car = Car.find(params[:car_id])
    # creating a new instance variable of review using the strong params
    @review = Review.new(review_params)
    # link the car id to the new review
    # @review --> the new review
    # .car --> car_id --> connecting the id to the review //  this is a method
    # = @car --> assigning the card id on line 4 to the review
    @review.car = @car
    # create conditions for saving the review
    if @review.save
      redirect_to car_path(@car)
    else
      render "cars/show", :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
