class UserDrinksController < ApplicationController

  
  def index
    @user_drinks = UserDrink.all
  end

  def create
    user_drink = UserDrink.new(user_id: current_user.id, drinkery_id: params[:drinkery_id])
    user_drink.save
    redirect_to "/user_drinks"
  end

end
