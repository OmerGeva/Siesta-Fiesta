class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy


  validates :title, uniqueness: true
  validates :category, inclusion: { in: ['couch', 'yoga mat', 'tent'] }
  mount_uploader :photo, PhotoUploader
end
