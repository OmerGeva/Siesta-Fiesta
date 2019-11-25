class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :date, uniqueness: true
end
