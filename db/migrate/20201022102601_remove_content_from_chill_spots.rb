class RemoveContentFromChillSpots < ActiveRecord::Migration[6.0]
  def change
    remove_column :chill_spots, :content, :string
  end
end
