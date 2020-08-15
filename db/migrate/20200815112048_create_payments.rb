class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :price
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
