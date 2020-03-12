class Catagory < ApplicationRecord
    has_many :courses, through: :coursecatagories
    has_many :coursecatagories, dependent: :destroy
end