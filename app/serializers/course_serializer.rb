class CourseSerializer < ActiveModel::Serializer
    attributes :id, :title, :text, :quote, :course_image
    has_many :images
  end