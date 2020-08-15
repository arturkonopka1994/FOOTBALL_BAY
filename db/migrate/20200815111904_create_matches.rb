class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :skill_level
      t.integer :no_of_players
      t.datetime :start_time
      t.datetime :end_time
      t.string :gender
      t.references :user, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
