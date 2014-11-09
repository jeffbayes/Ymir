class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
