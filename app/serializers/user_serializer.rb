class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :courses, :email, :rooms
has_many :rooms
    has_many :kids
    has_many :collections
    has_many :rooms
    

  end