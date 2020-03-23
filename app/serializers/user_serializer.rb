class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :courses, :email
    # attribute :room do |user|
    #     user.room.uniq
    #   end
    # has_many :messages
    has_many :kids
    has_many :collections
    # has_many :rooms
   
    
  end