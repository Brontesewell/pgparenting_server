class Catagory < ApplicationRecord
    has_many :courses, dependent: :destroy

    has_many :catagory_sub_catagories, dependent: :destroy
    
    has_many :sub_catagories, through: :catagory_sub_catagories


end