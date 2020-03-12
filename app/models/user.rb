class User < ApplicationRecord
    has_secure_password

    has_many :childrens, dependent: :destroy
    has_many :collections, :dependent: :destroy
    
    
    has_many :courses, through: :collections

    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


end