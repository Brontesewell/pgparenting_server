class MessageSerializer < ActiveModel::Serializer
    attributes :id, :conversation_id, :text, :created_at, :user_id
    belongs_to :user
    belongs_to :conversation
  end
  