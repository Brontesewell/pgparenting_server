class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :courses, :email, :subscribe, :contacts
    # attribute :room do |user|
    #     user.room.uniq
    #   end
    has_many :kids
    has_many :collections
    has_many :contacts
    # has_many :rooms
   
    
  end