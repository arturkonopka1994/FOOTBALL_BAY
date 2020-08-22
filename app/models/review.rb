class Review < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_rich_text :rich_body

  validates :rich_body, length: { minimum: 5 }, presence: true
end
