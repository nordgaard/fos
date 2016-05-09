class DrinkeriesController < ApplicationController


def index
  @drinkeries = Drinkery.all
end


end
