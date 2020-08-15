class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :match
  has_one :payment
end
