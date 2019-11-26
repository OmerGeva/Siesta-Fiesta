class AddRequestedAndBookedToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :requested, :boolean
    add_column :bookings, :booked, :boolean
  end
end
