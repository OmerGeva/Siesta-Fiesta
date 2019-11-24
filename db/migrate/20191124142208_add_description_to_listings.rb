class AddDescriptionToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :description, :text
  end
end
