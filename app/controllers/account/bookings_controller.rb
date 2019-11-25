class Account::BookingsController < ApplicationController
  def index
    @current_bookings = policy_scope(Booking).where("date > ? AND user_id = ?", Time.now, current_user.id)
    @previous_bookings = policy_scope(Booking).where("date < ?AND user_id = ?", Time.now, current_user.id)
  end

  def edit_user
    skip_authorization
  end

  def update_user
    current_user.update(account_params)
    skip_authorization

    redirect_to account_bookings_path
  end

  def account_params
    params.require(:user).permit(:first_name, :last_name, :email, :photo)
  end
end
