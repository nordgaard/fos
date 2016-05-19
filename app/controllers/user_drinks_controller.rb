class UserDrinksController < ApplicationController

  
  def index
    @user_drinks = UserDrink.all
  end

  def create
    user_drink = UserDrink.new(location_id: params[:location_id], user_id: params[:user_id])
    user_drink.save
    redirect_to "/user_drinks"
  end

  def destroy
    UserDrink.find_by(id: params[:id]).destroy
    session[:cart_count] = nil
    redirect_to "/user_drinks"
  end
end
