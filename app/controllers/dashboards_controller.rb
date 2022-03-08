class DashboardsController < ApplicationController
before_action :get_messages, only: [:profile]

  def profile
    @user = User.find(current_user.id)
    authorize @user
    if params[:chatroom_id]
      @chatroom = Chatroom.find(params[:chatroom_id])
      authorize @chatroom
      @message = Message.new
    end
  end

  def dashboard
    @user = User.find(current_user.id)
    authorize @user
    if params[:chatroom_id]
      @chatroom = Chatroom.find(params[:chatroom_id])
      authorize @chatroom
      @message = Message.new
    end
  end

  private

  def get_messages
    @messages = []
    current_user.pulses.each do |pulse|
      pulse.chatrooms.each do |chatroom|
        @messages << chatroom.messages.last
      end
    end
  end
end
