class Catagory < ApplicationRecord
    has_many :courses, through: :course_catagories
    has_many :course_catagories, dependent: :destroy
end