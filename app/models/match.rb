class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue, optional: true
  has_one :chatroom
  has_many :bookings
  has_many :users, through: :bookings
  # before_validation :valid_venue_time?

  validates :description, length: { minimum: 20 }, presence: true
  validates :start_time, :end_time, presence: true
  validates :skill_level, presence: true

# def valid_venue_time?
#   valid_time = self.venue.matches.all? do |match|
#     !(match.start_time >= self.start_time && match.start_time <= self.end_time || match.end_time >= self.start_time && match.end_time <= self.end_time)
#   end
#   errors.add(:start_time, "The venue is not available for this time") unless valid_time
# end

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
