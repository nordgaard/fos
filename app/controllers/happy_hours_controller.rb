class HappyHoursController < ApplicationController
    def index
    @happy_hours = HappyHour.all
  end

  def show
    @happy_hour = HappyHour.find_by(id: params[:id])
  end

    def search
    search_term = params[:user_search]
    @happy_hours = HappyHour.where("name LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end
end