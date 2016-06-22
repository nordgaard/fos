class HappyHoursController < ApplicationController
  def index
    @happy_hours = HappyHour.all
    @day_format = DayOfWeek.all
    @time_format = TimeOfDay.all
    @author_format = User.all
  end


  def show
    @happy_hour = HappyHour.find_by(id: params[:id])
    @user = current_user
    @location = Location.find_by(id: params[:id])
  end


  def new
    @happy_hour = HappyHour.new
  end

  def create
    @happy_hour = HappyHour.new(user_id: current_user.id, location_id: params[:location][:location_id], hype_title: params[:hype_title], start_hour: params[:start_hour][:time_of_day_id], end_hour: params[:end_hour][:time_of_day_id], hype_description: params[:hype_description], day_of_week_id: params[:day_of_week][:day_of_week_id])
    if @happy_hour.save
      flash[:success] = "You Hyped your happy hour! Keep it up!"
      redirect_to "/happy_hours/#{@happy_hour.id}"
    else
      render :new   
    end
  end


    def search
      search_term = params[:user_search]
      @happy_hours = HappyHour.where("name LIKE ?", "%#{search_term}%", "%#{search_term}%")
      render :index
    end
  end