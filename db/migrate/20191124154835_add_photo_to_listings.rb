class AddPhotoToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :photo, :string
  end
end
