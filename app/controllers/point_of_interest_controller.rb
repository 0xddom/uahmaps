class PointOfInterestController < ApplicationController

  def index
    @points = PointOfInterest.all
  end

  def show
    @point = PointOfInterest.find params[:id]
  end

end
