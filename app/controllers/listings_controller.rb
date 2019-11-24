class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @listing = Listing.find(params[:id])
  end
end
