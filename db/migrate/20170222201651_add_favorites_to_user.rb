class AddFavoritesToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :point_of_interest, foreign_key: true
  end
end
