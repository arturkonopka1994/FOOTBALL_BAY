class Venue < ApplicationRecord
	has_many :matches, dependent: :destroy
	has_many :reviews, dependent: :destroy
end
