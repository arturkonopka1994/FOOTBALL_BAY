class AddNumberToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :mobile_number, :text
  end
end
