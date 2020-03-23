class MessagesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
    skip_before_action :authorized, only: [:create]
    
    def create
      message = Message.new(message_params)
      conversation = Conversation.find(message_params[:conversation_id])
      user = User.find(message_params[:user_id])
      if message.save
        serialized_data = ActiveModelSerializers::Adapter::Json.new(
          MessageSerializer.new(message)
        ).serializable_hash
        MessagesChannel.broadcast_to conversation, user, serialized_data
        head :ok
      end
    end
    
    private
    
    def message_params
      params.require(:message).permit(:text, :conversation_id, :user_id)
    end
  end