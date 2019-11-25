class ListingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @query = params[:search][:category]

    if @query && @query != ""
      @listings = policy_scope(Listing).where(category: @query)
    else
      @listings = policy_scope(Listing)
    end
    authorize @listings
  end

  def show
    @listing = Listing.find(params[:id])
    @booking = Booking.new
    authorize @listing
  end

end
