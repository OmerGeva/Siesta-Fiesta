class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_review, only: [:show, :edit, :update, :delete]

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
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
end
