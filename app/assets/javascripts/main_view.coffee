# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class Point
  constructor: (x, y) ->
    @x = x
    @y = y

user_location = null

if 'geolocation' of navigator
  navigator.geolocation.getCurrentPosition (position) ->
    user_location = new Point position.coords.longitude, position.coords.latitude

