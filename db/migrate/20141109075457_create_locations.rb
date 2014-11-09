class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :map_id
      t.integer :superlocation_id
      t.integer :x_coordinate
      t.integer :y_coordinate
      t.string :name
      t.string :type
      t.text :notes
      t.attachment :image

      t.timestamps null: false
    end
  end
end
