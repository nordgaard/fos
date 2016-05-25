class LocationsController < ApplicationController


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
  end


  def new
    @location = Location.new
  end

  def create
    address = "#{params[:address]}, #{params[:city]}, #{params[:state]}, #{params[:zip]}"
    coordinates = Geocoder.coordinates(address)
    @location = Location.new(id: params[:id], name: params[:name], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], open_hour: params[:open_hour], close_hour: params[:close_hour], latitude: coordinates[0], longitude: coordinates[1])
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
    @location = Location.find_by(id: params[:id])
    address = "#{params[:address]}, #{params[:city]}, #{params[:state]}, #{params[:zip]}"
    coordinates = Geocoder.coordinates(address)
    @location.assign_attributes(id: params[:id], name: params[:name], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], open_hour: params[:open_hour], close_hour: params[:close_hour],latitude: coordinates[0], longitude: coordinates[1])
    @location.save
    flash[:success] = "This drinkery has been updated!"
    redirect_to "/locations/#{@location.id}"
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
