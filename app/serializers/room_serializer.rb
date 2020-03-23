class RoomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :messages, :users
  has_many :users
end
