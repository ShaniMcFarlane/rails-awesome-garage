class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @favourite = Favourite.new
  end

  # find all the reviews that link to the car
  # display the reviews in the show page
  # make a new review (create/new) and save it
end
