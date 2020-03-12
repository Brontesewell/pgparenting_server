class ChildrenSerializer < ActiveModel::Serializer
    attributes :id, :name, :gender, :age
    belongs_to :user
  end