class RenameChillImageColumnToChillSpots < ActiveRecord::Migration[6.0]
  def change
    rename_column :chill_spots, :chill_image, :spot_image
  end
end
