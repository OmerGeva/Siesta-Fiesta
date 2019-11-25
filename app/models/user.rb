class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :default_values

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :listings

  def default_values
    self.photo = 'https://i.kym-cdn.com/photos/images/newsfeed/001/452/271/0f9'
  end
end
