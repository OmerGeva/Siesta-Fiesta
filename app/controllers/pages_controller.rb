class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @listings = Listing.joins(:reviews).order('avg_rating DESC')
    @listings = Listing.all.limit(8)
    @new_listing = Listing.new
  end
end
