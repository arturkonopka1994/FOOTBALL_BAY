class Venue < ApplicationRecord
	has_many :matches, dependent: :destroy
	has_many :reviews, dependent: :destroy

	validates :name, presence: true, uniqueness: true
	validates :city, :postcode, presence: true 
end
