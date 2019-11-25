class Listing < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: true
  validates :address, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
