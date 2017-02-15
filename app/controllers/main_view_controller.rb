class MainViewController < ApplicationController
  def index
    points = PointOfInterest.all

    @default_location = _default_location points
    @markers = _create_markers points
  end

  private

  def _default_location(points)
    points[0].location
  end

  def _create_markers(points)
    points.map do |point|
      {
        latlng: [point.location.longitude, point.location.latitude],
        popup: point.name,
      }
    end
  end
end
