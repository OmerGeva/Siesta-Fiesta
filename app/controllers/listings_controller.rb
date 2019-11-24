class ListingsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @query = params[:search][:category]

    if @query && @query != ""
      @listings = Listing.where(category: @query)
    else
      @listings = Listing.all
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :category, :price)
  end
end
