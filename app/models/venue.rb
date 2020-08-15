class Venue < ApplicationRecord
	has_many :matches
	has_many :reviews
end
