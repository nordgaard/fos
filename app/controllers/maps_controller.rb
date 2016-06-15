class MapsController < ApplicationController

  def index
    @locations = Location.first(20)
    gon.locations = @locations 
  end

end
