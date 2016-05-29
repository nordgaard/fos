namespace :google_places do
  desc "Gathers information from Google Places for database"
  task :pull_data do
    @client = GooglePlaces::Client.new(API_KEY)
  end
end