class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email
    has_many :kids
    has_many :courses
  end