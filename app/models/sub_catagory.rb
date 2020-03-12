class SubCatagory < ApplicationRecord 
    
    has_many :courses
    belongs_to :catagory

    accepts_nested_attributes_for :courses

end