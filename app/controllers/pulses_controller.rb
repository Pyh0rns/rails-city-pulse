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
    # <-------------------------- SEARCHBAR -------------------------->
    if params[:query].present?
      @pulses = Pulse.global_search("#{params[:query]}")
    else
      @pulses = @city.pulses.all
    end
  end

  def show
    @pulse = find_pulse
  end

  def new
    @city = City.find(params[:city_id])
    @pulse = Pulse.new
  end

  def create
    @pulse = Pulse.new(pulse_params)
    @pulse.user = current_user
    @pulse.city= current_user.city
    if @pulse.save
      redirect_to city_pulses_path
    else
      render :new
    end
  end

  def destroy
    @pulse = find_pulse
    @pulse.destroy
    redirect_to city_pulses_path
  end

  private

  def pulse_params
    params.require(:pulse).permit(:title, :solution, :problem, :address, :photo_url)
  end

  def find_pulse
    Pulse.find(params[:id])
  end
end
