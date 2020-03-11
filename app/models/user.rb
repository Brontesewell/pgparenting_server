class User < ApplicationRecord
    has_secure_password

    has_many :childrens
    
    has_many :courses, through: :collections

    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


end