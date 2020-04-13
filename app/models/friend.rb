class Friend < ApplicationRecord
    belongs_to :myself, class_name: "User", foreign_key: :myself_id
    belongs_to :friend, class_name: "User", foreign_key: :friend_id
end
