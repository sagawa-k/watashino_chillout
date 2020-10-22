class RenameTitleColumnToChillSpots < ActiveRecord::Migration[6.0]
  def change
    rename_column :chill_spots, :title, :name
  end
end
