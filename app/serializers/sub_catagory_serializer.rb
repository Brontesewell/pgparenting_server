class SubCatagorySerializer < ActiveModel::Serializer
    attributes :id, :title, :catagory_id

    belongs_to :catagory
    has_many :courses
  end