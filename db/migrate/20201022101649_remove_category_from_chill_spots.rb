class RemoveCategoryFromChillSpots < ActiveRecord::Migration[6.0]
  def change
    remove_column :chill_spots, :category, :integer
  end
end
