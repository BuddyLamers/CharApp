class MessagesController < ApplicationController

  def new
    @message = Message.new
    @receiver = User.new
    @receiver.username = params[:username]
    #ADD onto the url with the id..from 'message me'

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
    @unread_messages = current_user.received_messages.where(unread: true)
    @read_messages = current_user.received_messages.where(unread: false)

  end

  def sentbox
    @sent_messages = current_user.sent_messages

  end

  def show
    @message = Message.find(params[:id])
    render :show
  end

  def message_params
    params.require(:message).permit(:sender_id, :title, :body)
  end


end
