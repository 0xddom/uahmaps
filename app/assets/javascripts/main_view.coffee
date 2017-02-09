# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

USER_MARKER_RADIUS = 3
USER_MARKER_OPTIONS =
  stroke: false,
  fillOpacity: 1

class UserLocation
  constructor: (lon, lat) ->
    @lon = lon
    @lat = lat
    @addedToMap = false
    @updateMarker()

  updateMarker: ->
    if @addedToMap
      @marker.setLatLng [@lat, @lon]
    else
      @marker = L.circle [@lat, @lon], USER_MARKER_RADIUS, USER_MARKER_OPTIONS
      @marker.addTo L.map('map')

user_location = null
auto_move_to_user_position = true

if 'geolocation' of navigator
  navigator.geolocation.watchPosition (position) ->
    if user_location
      user_location.lon = position.coords.longitude
      user_location.lat = position.coords.latitude
      user_location.updateMarker()
    else
      user_location = new UserLocation position.coords.longitude, position.coords.latitude
    if auto_move_to_user_position
      centerOnUserLocation()
      auto_move_to_user_position = false
  , (error) ->
    console.error error
  , timeout: 30000

# A multiton collection of map singletons. This way the maps can be referenced from
# several parts of the page.
created_maps = {}
map_factory = L.map

L.map = (id, options) ->
  unless id of created_maps
    created_maps[id] = new map_factory id, options
  created_maps[id]

centerOnUserLocation = ->
  if user_location
      L.map('map').setView [user_location.lat, user_location.lon]

$ ->
  L.map('map').zoomControl.setPosition 'bottomleft'
  $('#center_on_user_location_button').click centerOnUserLocation
