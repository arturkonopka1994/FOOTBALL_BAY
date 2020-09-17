class Venue < ApplicationRecord
	has_many :matches, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_one_attached :photo
	validates :name, presence: true, uniqueness: true
  monetize :price_cents

	validates :city, :post_code, :surface, :cost_per_hour, presence: true

	geocoded_by :full_address
	after_validation :geocode, if: :will_save_change_to_address_line_1?
	after_validation :geocode, if: :will_save_change_to_address_line_2?
	after_validation :geocode, if: :will_save_change_to_city?
	after_validation :geocode, if: :will_save_change_to_post_code?


	def full_address
		address_line_1 = self.address_line_1
		address_line_2 = self.address_line_2
		city = self.city
		post_code = self.post_code
		full_address = "#{address_line_1}, #{address_line_2}, #{city}, #{post_code}"
	end
end
