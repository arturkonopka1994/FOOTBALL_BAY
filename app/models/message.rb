class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  has_rich_text :rich_body
end
