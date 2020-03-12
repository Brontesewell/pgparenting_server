class SubCatagory < ApplicationRecord 
    
    has_many :courses, dependent: :destroy

    has_many :catagory_sub_catagories, dependent: :destroy
    
    has_many :catagories, through: :catagory_sub_catagories



end