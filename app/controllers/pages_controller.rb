class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @listings = Listing.joins(:reviews).order('avg_rating DESC')
    avg_hash = {}
    top_array = []
    avg_counter = 0
    count = 5
    Listing.all.each do |listing|
      listing.reviews.each do |review|
        avg_counter += review.rating
      end
      avg_hash[listing.title] = listing.reviews.count == 0 ? 0 : avg_counter/listing.reviews.count
      avg_counter = 0
    end

    index_array = (avg_hash.sort_by { |el| el.reverse }).reverse
    8.times do
      top_array << Listing.find_by(title: index_array[avg_counter][0])
      avg_counter += 1
    end
    @listings = top_array
    @new_listing = Listing.new
  end
end
