class AddPriceToVenues < ActiveRecord::Migration[6.0]
  def change
    # if you want to store other currencies in DB remove currency part
    add_monetize :venues, :price, currency: { present: false }
  end
end
