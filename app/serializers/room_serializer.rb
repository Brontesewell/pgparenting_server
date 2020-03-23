class RoomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :messages, :users
  # has_many :users
  # has_many :messages
  # attribute :users do |room|
  #   UserSerializer.new(room.users.uniq)
  # end
end
