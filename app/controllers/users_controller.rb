class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new(first_name: params[:first_name],last_name: params[:last_name], email: params[:email])
    @user.save
    flash[:success] = "User created."
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find_by(id: params[:id]).delete
    flash[:warning] = "User Deleted"
    redirect_to "/users"
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.save
    flash[:success] = "User Updated"
    redirect_to "/users/#{@user.id}"
  end

  def search
    search_term = params[:user_search]
    @users = User.where("first_name LIKE ? OR last_name LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end

end
