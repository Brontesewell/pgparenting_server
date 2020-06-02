class ContactSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :email, :f_name, :l_name, :description
    belongs_to :user
  end

