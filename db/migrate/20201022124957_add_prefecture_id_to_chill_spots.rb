class AddPrefectureIdToChillSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :chill_spots, :prefecture_id, :integer
  end
end
