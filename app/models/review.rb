class Review < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_rich_text :content

  validates :content, presence: true, length: { minimum:10 }
end
