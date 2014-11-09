class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :campaign_id
      t.string :name
      t.text :notes
      t.attachment :image

      t.timestamps null: false
    end
  end
end
