class Api::V1::LocationsController < ApplicationController
  
  def location_params
    params.require(:location).permit(:name, :image)
  end


  def index
    if params[:locations] = "all"
     @locations = Location.all
   elsif params[:locations] = "happy_hours"
    @locations = Location
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
  address = "#{params[:lat]}, #{params[:lng]}"
  coordinates = Geocoder.coordinates(address)
  @location = Location.new(name: location.name, place_id: location.place_id, lat: location.lat, lng: location.lng, icon: location.icon)
  if @location.save
    render :show
    redirect_to "/locations/#{@location.id}"
  else
    render json: {errors: @location.errors.full_messages}, status: 422
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
