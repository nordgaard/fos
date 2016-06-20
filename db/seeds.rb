100.times do  
HappyHour.create!(
  user_id: Faker::Number.between(35,41),
  location_id: Faker::Number.between(218,330),
  hype_title: Faker::Hipster.word, 
  hype_description: Faker::Hipster.paragraph, 
  start_hour: Faker::Number.between(14,16), 
  end_hour: Faker::Number.between(17,21), 
  day_of_week_id: Faker::Number.between(0,6))  
end