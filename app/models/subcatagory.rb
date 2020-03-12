class Subcatagory < ApplicationRecord 
    
    has_many :courses
    
    belongs_to :catagory

end