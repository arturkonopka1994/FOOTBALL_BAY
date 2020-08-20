class AddTitleAndDescriptionToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :title, :string
    add_column :matches, :description, :text
  end
end
