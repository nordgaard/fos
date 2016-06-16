json.array! @happy_hours.each do |happy_hour|
  json.hype_title happy_hour.hype_title
  json.hype_description happy_hour.hype_description
end