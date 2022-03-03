class DashboardsController < ApplicationController
  def profile
    @user = User.find(current_user.id)
    authorize @user
  end

  def dashboard
    @user = User.find(current_user.id)
    authorize @user
  end
end
