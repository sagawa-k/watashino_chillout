class RenameUserImageColumnToChillouts < ActiveRecord::Migration[6.0]
  def change
    rename_column :chillouts, :user_image, :chill_image
  end
end
