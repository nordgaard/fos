class HappyHoursController < ApplicationController
    def index
    @happy_hours = HappyHour.all
  end

  def show
    @happy_hour = HappyHour.find_by(id: params[:id])
  end
end
