class Review < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_rich_text :rich_body
end
