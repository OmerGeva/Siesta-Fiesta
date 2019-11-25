class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, uniqueness: true
  validates :address, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
