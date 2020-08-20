class Review < ApplicationRecord
  belongs_to :user
  belongs_to :venue

  validates :description, length: { minimum: 5 }, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
