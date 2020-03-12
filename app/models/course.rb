class Course < ApplicationRecord

    has_many :catagories, through: :coursecatagories
    has_many :coursecatagories, dependent: :destroy

    has_many :users, through: :collections
    has_many :collections, dependent: :destroy
    has_many :images
end