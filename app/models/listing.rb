class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, uniqueness: true
  validates :address, uniqueness: true
  validates :category, inclusion: { in: ['couch', 'yoga mat', 'tent'] }
  mount_uploader :photo, PhotoUploader
end
