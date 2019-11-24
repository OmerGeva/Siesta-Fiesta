class ListingsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @listing = Listing.find(params[:id])
    @booking = Booking.new
  end

  def index
    @query = params[:search][:category]

    if @query && @query != ""
      @listings = Listing.where(category: @query)
    else
      @listings = Listing.all
    end
  end
end
