class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :match
  has_one :payment
  monetize :amount_cents
end
