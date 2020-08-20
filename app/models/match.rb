class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_one :chatroom
  has_many :bookings

  validates :description, length: { minimum:100 }, presence: true
  validates :start_time, :end_time, presence: true
  validates :gender, :skill_level, presence: true
end