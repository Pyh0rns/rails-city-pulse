class PulsesController < ApplicationController
  def index
    @city = City.find(params[:city_id])

    # <-------------------------- SEARCHBAR -------------------------->
    if params[:query].present?
      @pulses = Pulse.global_search("#{params[:query]}")
    else
      @pulses = @city.pulses.all
    end
  end
end
