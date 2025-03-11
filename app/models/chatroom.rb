class Chatroom < ApplicationRecord
  scope :public_rooms, -> { where(is_private: false) }
  after_create_commit { broadcast_append_to "chatrooms" }
  has_many :messages
end
