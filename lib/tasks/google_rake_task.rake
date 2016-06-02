namespace :google_places do
  desc "Gathers information from Google Places for database"
  task :pull_data => :environment do
    @client = GooglePlaces::Client.new(ENV['MY_GOOGLE_KEY'])
    p @client
    locations = @client.spots(37.757210, -122.431429,:types => ['restaurant','food', 'bar', 'night_club', 'liquor_store'], :exclude => ['cafe', 'bakery'])
    p locations

    locations.each do |location| 
      Location.create(name: location.name, place_id: location.place_id, lat: location.lat, lng: location.lng, icon: location.icon)  
    end
  end
end