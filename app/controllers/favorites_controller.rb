class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pulse = Pulse.find(params[:pulse_id])
    authorize @favorite
    @favorite.pulse = @pulse
    @favorite.user = current_user
    @favorite.save
  end
end
