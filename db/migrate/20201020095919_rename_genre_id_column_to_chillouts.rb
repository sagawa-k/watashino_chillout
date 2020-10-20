class RenameGenreIdColumnToChillouts < ActiveRecord::Migration[6.0]
  def change
    rename_column :chillouts, :genre_id, :category
  end
end
