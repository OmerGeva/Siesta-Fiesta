class ListingsController < ApplicationController
  def index
    @query = params[:search][:category]

    if @query && @query != ""
      @listings = Listing.where(category: @query)
    else
      @listings = Listing.all
    end
  end
end
