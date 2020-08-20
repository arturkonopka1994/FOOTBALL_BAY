class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_one :chatroom
  has_many :bookings
  has_many :users, through: :bookings


  def players
    users
  end
end
