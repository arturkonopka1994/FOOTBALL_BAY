class AddStateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :state, :string
  end
end
