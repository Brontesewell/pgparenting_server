class Catagory < ApplicationRecord
    has_many :courses, dependent: :destroy
    has_many :sub_catagories, dependent: :destroy

  
    accepts_nested_attributes_for :sub_catagories

end