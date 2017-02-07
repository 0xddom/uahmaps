json.name @point.name
json.location do
  json.lat @point.location.y
  json.lon @point.location.x
end
json.id @point.id
json.description @point.description
