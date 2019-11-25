class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # before_create :default_values
  DEFAULT_PICTURE = 'https://i.kym-cdn.com/photos/images/newsfeed/001/452/271/0f9'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :listings
  mount_uploader :photo, PhotoUploader

  # def default_values
  #   self.remote_photo_url = 'https://i.kym-cdn.com/photos/images/newsfeed/001/452/271/0f9'
  # end
end
