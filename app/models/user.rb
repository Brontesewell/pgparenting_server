class User < ApplicationRecord
    has_secure_password
    
    # has_many :messages
    # has_many :conversations, through: :messages

    has_many :kids
    has_many :kids, dependent: :destroy
    
    has_many :collections, dependent: :destroy
    has_many :collections
    has_many :courses, through: :collections
    
    has_many :contacts

    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


end