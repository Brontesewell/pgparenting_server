class CatagorySerializer < ActiveModel::Serializer
    attributes :id, :image, :catagory_name, :catagory_title, :description
    has_many :courses
  end