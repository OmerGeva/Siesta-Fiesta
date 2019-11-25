class AddTimeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :time, :datetime
  end
end
