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
        popup: _create_popup(point),
      }
    end
  end

	def _create_popup(point)
<<POPUP.gsub(/\n/, '')
			#{point.name}
			<br/><br/><br/>
			<ul class="align-right menu">
				<li><button class="button small secondary"><i class="fi-heart"></i></button></li>
				<li><button class="button small secondary"><i class="fi-marker"></i></button></li>
			</ul>

POPUP
	end
end
