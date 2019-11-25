class Account::BookingsController < ApplicationController
  def index
    @current_bookings = policy_scope(Booking).where("date > ? AND user_id = ?", Time.now, current_user.id)
    @previous_bookings = policy_scope(Booking).where("date < ?AND user_id = ?", Time.now, current_user.id)
  end
end
