class MainViewController < ApplicationController
  def index
    points = PointOfInterest.all

    @default_location = default_location points
    @markers = create_markers points
    p @markers
  end

  private

  def default_location(points)
    points[0].location
  end

  def create_markers(points)
    points.map do |point|
      {
        latlng: [point.location.longitude, point.location.latitude],
        popup: point.name
      }
    end
  end
end
