json.array! @points do |point|
  json.name point.name
  json.location point.location
  json.id point.id
end
