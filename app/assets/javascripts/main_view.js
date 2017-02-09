(function() {
  var UserLocation, auto_move_to_user_position, centerOnUserLocation, created_maps, map_factory, user_location;

  UserLocation = (function() {
    function UserLocation(lon, lat) {
      this.lon = lon;
      this.lat = lat;
    }

    return UserLocation;

  })();

  user_location = null;

  auto_move_to_user_position = true;

  if ('geolocation' in navigator) {
    console.log('Location supported');
    navigator.geolocation.watchPosition(function(position) {
      console.log('Got user location');
      user_location = new UserLocation(position.coords.longitude, position.coords.latitude);
      if (auto_move_to_user_position) {
        centerOnUserLocation;
        return auto_move_to_user_position = true;
      }
    }, function(error) {
      return console.error(error);
    }, {
      timeout: 30000
    });
  }

  created_maps = {};

  map_factory = L.map;

  L.map = function(id, options) {
    console.log(created_maps);
    if (!(id in created_maps)) {
      console.log("Creating " + id);
      created_maps[id] = new map_factory(id, options);
    }
    return created_maps[id];
  };

  centerOnUserLocation = function() {
    if (user_location) {
      return L.map('map').setView([user_location.lat, user_location.lon]);
    }
  };

  $(function() {
    L.map('map').zoomControl.setPosition('bottomleft');
    return $('#center_on_user_location_button').click(centerOnUserLocation);
  });

}).call(this);
