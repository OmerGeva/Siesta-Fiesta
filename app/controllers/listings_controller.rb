class ListingsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_listing, only: [:show, :destroy]

  def index
    if params[:category].present?
      @listings = policy_scope(Listing).where(category: params[:category]).geocoded
    elsif params[:search][:address].present?
      @listings = policy_scope(Listing).near(params[:search][:address], 20)
    else
      @listings = policy_scope(Listing).geocoded
    end

    @markers = @listings.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { listing: listing }),
        image_url: helpers.asset_url('https://image.flaticon.com/icons/svg/1826/1826064.svg')
      }
    end

    authorize @listings
  end

  def show
    @listing = Listing.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @markers = [{
      lat: @listing.latitude,
      lng: @listing.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { listing: @listing }),
      image_url: helpers.asset_url('https://image.flaticon.com/icons/svg/1826/1826064.svg')
    }]

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
    params.require(:listing).permit(:title, :category, :price, :description, :photo, :address)
  end
end
