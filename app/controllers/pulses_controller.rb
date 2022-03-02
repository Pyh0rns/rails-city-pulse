class PulsesController < ApplicationController

  def index
    @city = City.find(params[:city_id])
    @pulses = @city.pulses.all
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
      redirect_to pulses_path
    else
      render :new
    end
  end

  def destroy
    @pulse = find_pulse
    @pulse.destroy
    redirect_to pulses_path
  end

  private

  def pulse_params
    params.require(:pulse).permit(:title, :solution, :problem, :address, :photo_url)
  end

  def find_pulse
    Pulse.find(params[:id])
  end
end
