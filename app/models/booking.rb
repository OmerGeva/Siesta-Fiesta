class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :date, uniqueness: true
  validates :duration, numericality: { greater_than_or_equal_to: 0 }
end
