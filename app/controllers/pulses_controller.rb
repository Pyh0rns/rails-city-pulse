class PulsesController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @pulses = @city.pulses.all
  end

end
