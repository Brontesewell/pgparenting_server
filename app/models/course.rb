class Course < ApplicationRecord

    has_many :catagories, through: :coursecatagories
    
    has_many :users, through: :collections

end