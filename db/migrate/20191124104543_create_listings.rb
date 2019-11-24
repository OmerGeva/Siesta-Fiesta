class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :category
      t.integer :price
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
