class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_one :chatroom
  has_many :bookings
  has_many :users, through: :bookings
  
  validates :description, length: { minimum: 20 }, presence: true
  validates :start_time, :end_time, presence: true
  validates :skill_level, presence: true
  
  def players
    users
  end

  def spots_left
    no_of_players - self.bookings.count
  end

  def spots_available?
    spots_left.zero? || spots_left.negative?
  end
end

  


 


