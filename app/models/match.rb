class Match < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_one :chatroom
  has_many :bookings
  has_many :users, through: :bookings
  
  validates :description, length: { minimum: 20 }, presence: true
  validates :start_time, :end_time, presence: true
  validates :gender, :skill_level, presence: true
  
  def players
    users
  end
end

  


 


