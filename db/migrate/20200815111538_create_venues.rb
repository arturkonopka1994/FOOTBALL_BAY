class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :post_code
      t.integer :cost_per_hour
      t.string :name
      t.string :surface
      t.boolean :floodlit

      t.timestamps
    end
  end
end
