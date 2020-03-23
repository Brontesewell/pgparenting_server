class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :room_id, :content
  # belongs_to :user
  # belongs_to :room
end
