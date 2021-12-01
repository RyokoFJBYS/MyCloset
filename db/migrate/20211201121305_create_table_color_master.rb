class CreateTableColorMaster < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :color, :integer
    create_table :colors do |t|
      t.string :name_en
      t.string :name_ja
    end
    add_column :items, :color_id, :integer
  end
end
