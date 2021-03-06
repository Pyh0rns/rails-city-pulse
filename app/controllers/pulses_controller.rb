class PulsesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pulses = policy_scope(Pulse).order(created_at: :desc)
    @city = City.find(params[:city_id])
    @pulses = @city.pulses.all

    # <-------------------------- MAPBOX -------------------------->
    @markers = @pulses.geocoded.map do |pulse|
      {
        lat: pulse.latitude,
        lng: pulse.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pulse: pulse }),
        image_url: helpers.asset_url("logo.svg")
      }
    end
    # <-------------------------- SEARCHBAR -------------------------->
    if params[:query].present?
      @pulses = Pulse.global_search("#{params[:query]}").where(city: @city)
    else
      @pulses = @city.pulses.all
    end
  end

  def show
    @pulse = find_pulse
    @city = params[:city_id]
    authorize @pulse
  end

  def new
    @city = City.find(params[:city_id])
    @pulse = Pulse.new
    authorize @pulse
  end

  def create
    @pulse = Pulse.new(pulse_params)
    authorize @pulse
    @pulse.user = current_user
    @pulse.city = current_user.city
    @city = current_user.city


    if @pulse.save
      params[:pulse][:category_ids].each do |id|

        @pulse_categories = PulseCategory.new
        @pulse_categories.category = Category.find(id)
        @pulse_categories.pulse = @pulse
        @pulse_categories.save
        Favorite.create(user_id: current_user.id, pulse_id: @pulse.id)
      end
      redirect_to city_pulses_path, flash: { congrats_modal: true }
      flash[:notice] = "XP + 50"
    else
      render :new
    end
  end

  def destroy
    # TODO: when btn to delete => do not forget to put 'policy' in the HTML file for validation with pundit
    @pulse = find_pulse
    @pulse.destroy
    redirect_to city_pulses_path
  end

  def update
    @pulse = find_pulse
    authorize @pulse
    if @pulse.status == "Votes en cours"
      @pulse.status = "Validé"
      chatroom = Chatroom.new(name: @pulse.title)
      chatroom.pulse = @pulse
      chatroom.save
    else
      @pulse.status = "Réalisé"
      @pulse.chatrooms.delete
    end
    @pulse.save
    redirect_to dashboard_path(current_user.city)
  end

  private

  def pulse_params
    params.require(:pulse).permit(:title, :solution, :problem, :address, :photo)
  end

  def find_pulse
    Pulse.find(params[:id])
  end
end
