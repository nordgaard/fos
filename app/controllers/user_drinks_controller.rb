class UserDrinksController < ApplicationController

  
  def index
    @user_drinks = UserDrink.all
  end

  def create
    user_drink = UserDrink.new(user_id: current_user.id, location_id: params[:location_id])
    user_drink.save
    redirect_to "/user_drinks"
  end

end
