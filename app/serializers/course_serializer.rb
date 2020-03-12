class CourseSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :quote, :course_image, :catagory_id, :sub_catagory_id
    has_many :images
    
    belongs_to :catagory
    belongs_to :sub_catagory
  end