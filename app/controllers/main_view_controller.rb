class MainViewController < ApplicationController
  def index
    @points = PointOfInterest.all
  end
end
