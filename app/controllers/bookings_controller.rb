class BookingsController < ApplicationController
  def new
    @booking = Booking.new(date: Date.now)
  end

  def create
    current_date = Date.new(params[:booking]["date(1i)"].to_i, params[:booking]["date(2i)"].to_i, params[:booking]["date(3i)"].to_i)
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.date = current_date
    @booking.listing = @listing
    authorize @booking
    @booking.save
    redirect_to account_bookings_path, notice: 'Booking was successfully created!'
    # if @booking.save
    #   redirect_to account_bookings_path, notice: 'Booking was successfully created!'
    # else
    #   render listing_path(@listing)
    # end
  end

  def booking_params
    params.require(:booking).permit(:date, :message, :duration)
  end
end
