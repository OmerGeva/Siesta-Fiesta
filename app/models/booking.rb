class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  after_initialize :init

  validates :date, presence: true
  validates :duration, numericality: { greater_than_or_equal_to: 0 }

  def init
    self.booked ||= false
  end
end
