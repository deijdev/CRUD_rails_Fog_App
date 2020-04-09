class User < ApplicationRecord
    has_secure_password
    has_many :libraries
    has_many :games, through: :libraries
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    
end
