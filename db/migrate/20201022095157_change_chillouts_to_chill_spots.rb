class ChangeChilloutsToChillSpots < ActiveRecord::Migration[6.0]
  def change
    rename_table :chillouts, :chill_spots
  end
end
