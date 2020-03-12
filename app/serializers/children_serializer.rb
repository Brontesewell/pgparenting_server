class ChildrenSerializer < ActiveModel::Serializer
    attributes :id, :name, :gender, :birthday, :user_id
    belongs_to :user
  end