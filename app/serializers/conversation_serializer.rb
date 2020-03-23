class ConversationSerializer < ActiveModel::Serializer
    attributes :id, :title, :users
    has_many :messages
  end