json.array! @happy_hours.each do |happy_hour|
  json.hype_title happy_hour.hype_title
  json.hype_description happy_hour.hype_description
  json.location_name happy_hour.location.name if happy_hour.location
  json.user_email happy_hour.user.email
end