class MessagesController < ApplicationController

  def new
    @message = Message.new
    # @receiver = User.find(params[:user_id])
    @receiver = User.new
    render :new
  end

  def create
    @receiver = User.find_by(username: params[:receiver_name])
    @message = Message.new(message_params)

    @message.receiver_id = @receiver.id

    if @message.save
      redirect_to sentbox_url
    else
      flash.now[:errors] = @message.errors.full_messages
      render :new
    end
  end

  def inbox
    @messages = current_user.received_messages
  end

  def sentbox
    @messages = current_user.sent_messages
  end

  def message_params
    params.require(:message).permit(:sender_id, :title, :body)
  end


end
