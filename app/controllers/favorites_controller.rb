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

    redirect_to city_pulses_path(@city, anchor: "pulse-#{@pulse.id}")
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    authorize @favorite
    @city = City.find(params[:city_id])
    @favorite.destroy
    redirect_to city_pulses_path(@city, anchor: "pulse-#{@favorite.pulse.id}")
  end
end
