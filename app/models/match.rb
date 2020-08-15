class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :chatrooms
  has_many :bookings
end
