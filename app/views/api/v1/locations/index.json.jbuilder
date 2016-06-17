json.array! @locations.each do |location|
  json.name location.name
  json.lat location.lat
  json.lng location.lng 
  json.vicinity location.vicinity
end