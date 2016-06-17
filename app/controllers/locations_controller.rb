class LocationsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def location_params
    params.require(:location).permit(:name, :image)
  end


  def index
    sort_choice = params[:sort]
    puts "sort choice?"
    p sort_choice
    if sort_choice
     @locations = Location.order(sort_choice)
   else
     @locations = Location.all
   end
 end


 def show
  @location = Location.find_by(id: params[:id])
  @user = current_user
end


def new
  @location = Location.new
end

def create
  address = params[:address]
  coordinates = Geocoder.coordinates(address)
  @location = Location.new(name: params[:name], lat: coordinates[0], lng: coordinates[1], vicinity: address)
  if @location.save
    flash[:success] = "You have listed a new drinkery!!"
    redirect_to "/locations/#{@location.id}"
  else
    render :new
  end
end

def edit
  @location = Location.find_by(id: params[:id])
end

def update
  # @location = Location.find_by(id: params[:id])
  # address = "#{params[:lat]}, #{params[:lng]}"
  # coordinates = Geocoder.coordinates(address)
  # @location.assign_attributes(name: location.name, place_id: location.place_id, lat: location.lat, lng: location.lng, icon: location.icon lat: location.lat, lng:)
  # @location.save
  # flash[:success] = "This drinkery has been updated!"
  # redirect_to "/locations/#{@location.id}"
end

def destroy
  @location = Location.find_by(id: params[:id])
  @location.destroy
  flash[:warning] = "You have destroyed this drinkery!!"
  redirect_to "/"
end

def search
  search_term = params[:user_search]
  @locations = Location.where("name LIKE ? OR address LIKE ?", "%#{search_term}%", "%#{search_term}%")
  render :index
end
end
