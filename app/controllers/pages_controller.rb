class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @listings = Listing.all
    @new_listing = Listing.new
  end
end
