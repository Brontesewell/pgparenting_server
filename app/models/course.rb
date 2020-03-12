class Course < ApplicationRecord

    has_many :catagories, through: :course_catagories
    has_many :course_catagories, dependent: :destroy

    has_many :users, through: :collections
    has_many :collections, dependent: :destroy
    has_many :images
end