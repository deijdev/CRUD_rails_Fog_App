class User < ApplicationRecord
    has_secure_password
    has_many :libraries
    has_many :games, through: :libraries
    has_many :added_friends, class_name: "Friend", foreign_key: :friend_id, dependent: :destroy
    has_many :my_friends, through: :added_friends, source: :my_friend 
    has_many :friendeds, class_name: "Friend", foreign_key: :myself_id, dependent: :destroy
    has_many :friends, through: :friendeds, source: :friend
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    
    # belongs_to :my_friend, class_name: "User", foreign_key: :myself_id
    # belongs_to :friend, class_name: "User", foreign_key: :friend_id
end
