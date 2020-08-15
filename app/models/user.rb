class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :bookings
  has_many :matches
  has_many :reviews
  has_many :messages
  has_many :booked_matches, through: :bookings, source: :match
end
