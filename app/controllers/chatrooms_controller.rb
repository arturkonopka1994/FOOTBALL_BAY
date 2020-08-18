class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @match = Match.find(params[:match_id])
    @chatroom = Chatroom.find(params[:id])
  end

  private

  def match_params
    params.require(:match).permit(:skill_level, :no_of_players, :start_time, :end_time,
    :match_description, :gender)
  end
end
