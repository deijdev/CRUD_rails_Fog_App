class User < ApplicationRecord
    has_many :libraries
    has_many :games, through: :libraries
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    
end
