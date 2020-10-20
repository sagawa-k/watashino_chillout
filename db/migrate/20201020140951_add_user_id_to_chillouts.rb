class AddUserIdToChillouts < ActiveRecord::Migration[6.0]
  def change
    add_reference :chillouts, :user, foreign_key: true
  end
end
