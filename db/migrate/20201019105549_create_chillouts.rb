class CreateChillouts < ActiveRecord::Migration[6.0]
  def change
    create_table :chillouts do |t|
      t.string :title
      t.string :content
      t.integer :genre_id
      t.string :image_url

      t.timestamps
    end
  end
end
