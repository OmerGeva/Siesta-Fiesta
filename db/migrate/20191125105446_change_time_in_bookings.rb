class ChangeTimeInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :time, :time
  end
end
