class ListingsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_listing, only: [:show, :destroy]
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

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    authorize @listing
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def destroy
    authorize @listing
    @listing.destroy

    redirect_to account_bookings_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :category, :price, :description, :photo)
  end
end
