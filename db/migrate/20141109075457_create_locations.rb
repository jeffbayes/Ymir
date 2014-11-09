class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :map_id
      t.integer :superlocation_id
      t.string :name
      t.string :type
      t.string :string
      t.text :notes
      t.attachment :image

      t.timestamps null: false
    end
  end
end
