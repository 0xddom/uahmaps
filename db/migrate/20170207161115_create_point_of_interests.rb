class CreatePointOfInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :point_of_interests do |t|
      t.string :name
      t.st_point :location, geographic: true

      t.timestamps
    end
  end
end
