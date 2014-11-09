class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :campaign_id
      t.text :notes

      t.timestamps null: false
    end
  end
end
