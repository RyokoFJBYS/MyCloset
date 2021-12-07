class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_id
      t.integer :type
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.string :introduction
      

      t.timestamps
    end
  end
end
