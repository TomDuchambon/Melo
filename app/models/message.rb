class Message < ApplicationRecord
  belongs_to :user
  belongs_to :message_room
  validates :content, presence: true
end
