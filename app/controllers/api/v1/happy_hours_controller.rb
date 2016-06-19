class Api::V1::HappyHoursController < ApplicationController

  def index
   #  sort_choice = params[:sort]
   #  puts "sort choice?"
   #  p sort_choice
   #  if sort_choice
   #   @happy_hours = happy_hour.order(sort_choice)
   # else
     @happy_hours = HappyHour.all
     @day_format = DayOfWeek.all
   # end
 end


 def show
  @happy_hour = HappyHour.find_by(id: params[:id])
  @user = current_user
end


def new
  @happy_hour = HappyHour.new
end

def create
end

def edit
end

def update
end

def destroy
end

def search
end
end
