class User < ApplicationRecord
    has_many :libraries
    has_many :games, through: :libraries
    
end
