class AddDescriptionToPointOfInterest < ActiveRecord::Migration[5.0]
  def change
    add_column :point_of_interests, :description, :string
  end
end
