class CitiesController < ApplicationController
  def index
    if params[:query].present?
      @city = City.search_by_city("#{params[:query]}")
    else
      @city = City.find_by(name: "Paris")
    end
  end
end
