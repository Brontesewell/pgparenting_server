class SubCatagorySerializer < ActiveModel::Serializer
    attributes :id, :title

    has_many :courses
    has_many :catagories

  end