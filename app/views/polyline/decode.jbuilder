json.array! @points_lst do |point|
  json.location do
    json.lat point[1]
    json.lon point[0]
  end
end
