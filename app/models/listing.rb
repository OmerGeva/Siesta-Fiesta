class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, uniqueness: true
  validates :address, uniqueness: true
  validates :category, inclusion: { in: ['couches', 'yoga mats', 'tents'] }
  mount_uploader :photo, PhotoUploader
end
