class MessagesController < ApplicationController
    def new
    @chatroom = Chatroom.find(params[:chatroom_id])
    @user = User.find(params[:user_id])
    @message = Message.new

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save!
      redirect_to chatroom_path(@chatroom)
    else
      render 'new'
  end

  def destroy
    @chatroom = Message.find(params[:id])
    @message.destroy
    redirect_to messages_path
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
