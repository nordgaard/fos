class DrinkeriesController < ApplicationController

  def index
    @drinkeries = Drinkery.all
  end

  def show
    @drinkery = Drinkery.find_by(id: params[:id])
  end


end
