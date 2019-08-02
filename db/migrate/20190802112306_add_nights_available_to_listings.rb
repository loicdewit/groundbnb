class AddNightsAvailableToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :nights_available, :text
  end
end
