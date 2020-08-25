class Venue < ApplicationRecord
	has_many :matches, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_one_attached :photo
	validates :name, presence: true, uniqueness: true
	validates :city, :post_code, presence: true 
end
