class MainViewController < AuthenticatedController
  def index
    @user = current_or_guest_user
    
    @points = PointOfInterest.all

    @default_location = _default_location @points
    @markers = _create_markers @points
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
	<!--<li><button  class="button small secondary" onclick="toggleFav(#{@user.id},#{point.id})">
               <i id="fav_#{point.id}" class="fi-heart"></i></button></li>-->
	<li><button class="button small secondary" onclick="onClickGotoButton(#{point.location.latitude},#{point.location.longitude})"><i class="fi-marker"></i></button></li>
    </ul>

POPUP
  end
end
