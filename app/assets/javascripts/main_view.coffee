# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ROUTER_HOST = 'http://router.project-osrm.org'
METHOD = '/route/v1/car/'

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

centerOnLocation = (lon, lat) ->
        L.map('map').setView [lat, lon]

centerOnUserLocation = ->
  if user_location
     centerOnLocation user_location.lon, user_location.lat

buildQuery = (from, to) ->
        #from.lat = 0
        #from.lon = 0
        q = "#{ROUTER_HOST}#{METHOD}#{from.lat},#{from.lon};#{to.lat},#{to.lon}?geometries=geojson"
        console.log q
        q

buildLatLon = (location) ->
        new L.LatLng location[0], location[1]

last_polyline = undefined

removeLastPolylineIfExists = ->
        console.log 'Removing'

printP = (p) ->
        console.log "(#{p[0]}, #{p[1]})"

paintRoute = (route) ->
        map = L.map 'map'
        console.log route
        printP p for p in route
        c.addTo map for c in (L.circle [p[0], p[1]], 3, { stroke: false, fillOpacity: 1 } for p in route)
        points = buildLatLon p for p in route
        polyline = new L.Polyline points,
                color: 'green',
                weight: 30,
                opacity: 1,
                smoothFactor: 1

        removeLastPolylineIfExists()
        last_polyline = polyline
        polyline.addTo map
        centerOnLocation route[0][1], route[0][0]

handleOSRMResult = (geom) ->
        paintRoute geom.coordinates
#        $.get "/polylines/decode.json?polyline=#{geom}", (data) ->
#                paintRoute data

@onClickGotoButton = (lon, lat) ->
        console.log 'Clicked with coords: (', lat, lon, ')'
        console.log 'Going from coords: (', user_location.lat, user_location.lon, ')'
        $.get buildQuery({ lat: user_location.lat, lon: user_location.lon}, { lat: lat, lon: lon }), (data) ->
                handleOSRMResult data.routes[0].geometry

$ ->
  L.map('map').zoomControl.setPosition 'bottomleft'
  $('#center_on_user_location_button').click centerOnUserLocation

