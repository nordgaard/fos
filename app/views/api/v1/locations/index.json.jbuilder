json.array! @locations.each do |location|
  json.id location.id
  json.name location.name
  json.lat location.lat
  json.lng location.lng 
  json.vicinity location.vicinity
  json.location location.vicinity
  json.type location.types
end