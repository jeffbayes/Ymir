class CreateNpcs < ActiveRecord::Migration
  def change
    create_table :npcs do |t|
      t.integer :map_id
      t.integer :location_id
      t.string :name
      t.text :notes
      t.attachment :character_sheet
      t.attachment :image

      t.timestamps null: false
    end
  end
end
