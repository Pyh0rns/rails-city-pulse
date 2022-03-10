class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pulse = Pulse.find(params[:pulse_id])
    authorize @favorite
    @city = City.find(params[:city_id])
    @favorite.pulse = @pulse
    @favorite.user = current_user
    @favorite.save
    # flash.now[:notice] = "XP + 20"
    flash[:notice] = "XP + 20"
    if params[:current_page] == "show"
      redirect_to city_pulse_path(@city, @pulse, anchor: "pulse-#{@pulse.id}")
    else
      redirect_to city_pulses_path(@city, anchor: "pulse-#{@pulse.id}")
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @pulse = @favorite.pulse
    authorize @favorite
    @city = City.find(params[:city_id])
    @favorite.destroy
    if params[:current_page] == "show"
      redirect_to city_pulse_path(@city, @pulse, anchor: "pulse-#{@pulse.id}")
    else
      redirect_to city_pulses_path(@city, anchor: "pulse-#{@favorite.pulse.id}")
    end
  end
end
