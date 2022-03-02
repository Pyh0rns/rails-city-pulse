class PulsesController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @pulses = @city.pulses.all
    @markers = @pulses.geocoded.map do |pulse|
      {
        lat: pulse.latitude,
        lng: pulse.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pulse: pulse }),
        image_url: helpers.asset_url("/logo.svg")
      }
    end
  end
end
