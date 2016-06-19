json.array! @happy_hours.each do |happy_hour|
  json.location happy_hour.location.name
  json.author happy_hour.user_id
  json.hype_title happy_hour.hype_title
  json.day_of_week @day_format[happy_hour.day_of_week_id].day_of_week
  json.start_hour happy_hour.start_hour
  json.end_hour happy_hour.end_hour
  json.hype_description happy_hour.hype_description
  json.location_id happy_hour.location_id
end