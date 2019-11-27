class BookingsController < ApplicationController
  def new
    @booking = Booking.new(date: Date.now)
  end


  def create

    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = @listing
    authorize @booking

    if @booking.save
      redirect_to account_bookings_path
    else
      render new_listing_booking_path(@listing)
    end
  end

  def booking_params
    params.require(:booking).permit(:date, :message, :duration, :date)
  end
end
