class UserDrinksController < ApplicationController
  before_action :authenticate_user!

  
  def index
    @user_drinks = current_user.user_drinks
  end

  def create
    user_drink = UserDrink.new(location_id: params[:location_id], user_id: current_user.id)
    user_drink.save
    redirect_to "/user_drinks"
  end

  def destroy
    UserDrink.find_by(id: params[:id]).destroy
    session[:cart_count] = nil
    redirect_to "/user_drinks"
  end

  def user_fav_locations
    @user_drinks = current_user.user_drinks
  end
end
