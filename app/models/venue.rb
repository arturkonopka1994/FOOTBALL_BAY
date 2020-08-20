class Venue < ApplicationRecord
	has_many :matches
	has_many :reviews

	validates :name, presence: true, uniqueness: true
	validates :city, :postcode, presence: true 
end
