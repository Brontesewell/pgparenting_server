class CollectionSerializer < ActiveModel::Serializer
    attributes :id, :collected, :user_id, :course_id
    
    belongs_to :course
    belongs_to :user
  end