class Account::BookingsController < ApplicationController
  def index
    @current_bookings = policy_scope(Booking).where("date >= ? AND user_id = ? AND booked = ?", Time.now, current_user.id, true)
    @previous_bookings = policy_scope(Booking).where("date < ?AND user_id = ? AND booked = ?", Time.now, current_user.id, true)
  end

  def edit_user
    skip_authorization
  end

  def pending_bookings
    @requested_bookings = current_user.offers.where(booked: false)

    skip_authorization
  end


  def update_user
    current_user.update(account_params)
    skip_authorization

    redirect_to pending_account_bookings_path
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.booked = true
    @booking.save
    skip_authorization

    redirect_to  account_bookings_path
  end

  def destroy

    @booking = Booking.find(params[:id])
    @booking.destroy

    skip_authorization

    redirect_to pending_account_bookings_path
  end

  private

  def account_params
    params.require(:user).permit(:first_name, :last_name, :email, :photo)
  end
end
