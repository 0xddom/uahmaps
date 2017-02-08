class MainViewController < ApplicationController
  def index
    @points = PointOfInterest.all

    p @points[0]
  end
end
