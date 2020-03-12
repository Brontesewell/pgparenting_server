class Course < ApplicationRecord

    belongs_to :catagory
    belongs_to :sub_catagory

    has_many :collections
    has_many :users, through: :collections
    has_many :collections, dependent: :destroy

    has_many :images
end