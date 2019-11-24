class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

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
end
