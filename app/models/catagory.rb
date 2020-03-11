class Catagory < ApplicationRecord
    has_many :courses, through: :coursecatagories

end