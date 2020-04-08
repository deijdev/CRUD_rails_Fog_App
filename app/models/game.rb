class Game < ApplicationRecord
    has_many :libraries
    has_many :users, through: :libraries
    validates :title, presence: true, uniqueness: {case_sensitive: false}
    # validate :game_already_taken
    
    # def game_already_taken
    #     if  Game.where(title: self.title).exists?
    #         errors.add(:title, "This game already exists.")
    #     end
    # end

    
end
