class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end
# created but not used 
  def show
    @match = Match.find(params[:match_id])
    @chatroom = Chatroom.find(params[:id])
  end
end

