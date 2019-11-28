class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_listing
  before_action :find_review, only: [:show, :edit, :update, :delete]

  # def index
  #   @reviews = Review.all
  # end

  def new
    @review = Review.new
  end

  def create
    @booking = Booking.new
    @review = Review.new(review_params)
    @review.listing = @listing
    @review.user = current_user
    authorize @review

    if @review.save
      redirect_to listing_path(@listing)
    else
      render 'listings/show'
    end
  end

  def destroy
    if @review.user == current_user
      authorize @review
      @review.destroy
      redirect_to reviews_path
    else
      render :new
    end
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
