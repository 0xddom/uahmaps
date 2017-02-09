# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class UserLocation
  constructor: (x, y) ->
    @x = x
    @y = y

user_location = null

if 'geolocation' of navigator
  console.log 'Location supported'
  navigator.geolocation.getCurrentPosition (position) ->
    console.log 'Got user location'
    user_location = new UserLocation position.coords.longitude, position.coords.latitude
  , (error) ->
    console.error error

# A multiton collection of map singletons. This way the maps can be referenced from
# several parts of the page.
created_maps = {}

map_factory = L.map

L.map = (id, options) ->
  console.log created_maps
  unless id of created_maps
    console.log "Creating #{id}"
    created_maps[id] = new map_factory id, options
  created_maps[id]

$ ->
  L.map('map').zoomControl.setPosition 'bottomleft'
  $('#center_on_user_location_button').click ->
    if user_location
      L.map('map').setView [user_location.lat, user_location.lon]
  console.log $('#center_on_user_location_button').length
