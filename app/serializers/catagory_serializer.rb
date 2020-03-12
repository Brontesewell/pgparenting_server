class CatagorySerializer < ActiveModel::Serializer
    attributes :id, :image, :catagory_name
    has_many :courses
  end