    namespace :google_places do
  desc "Gathers information from Google Places API for database"
  task :pull_data => :environment do
    @client = GooglePlaces::Client.new(ENV['MY_GOOGLE_KEY'])
    p @client
    locations = @client.spots(37.741808, -122.503575,:types => [ 'bar', 'night_club', 'liquor_store'], :exclude => ['restaurant', 'food', 'cafe', 'bakery', 'meal-takeaway', 'meal-delivery', 'grocery-or-supermarket', 'gas-station', 'convenience_store'])

    p locations

    locations.each do |location| 
      Location.create(name: location.name, place_id: location.place_id, lat: location.lat, lng: location.lng, icon: location.icon, types: location.types, price_level: location.price_level, formatted_address: location.formatted_address, formatted_phone_number: location.formatted_phone_number, website: location.website, opening_hours: location.opening_hours, photos: location.photos)  
    end
  end
end