class RenameImageUrlColumnToChillouts < ActiveRecord::Migration[6.0]
  def change
    rename_column :chillouts, :image_url, :user_image
  end
end
