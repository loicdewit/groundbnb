class AddPricePerNightToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :price_per_night, :integer
  end
end
