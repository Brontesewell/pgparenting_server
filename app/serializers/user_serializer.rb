class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :courses
    has_many :kids
    has_many :collections
  end