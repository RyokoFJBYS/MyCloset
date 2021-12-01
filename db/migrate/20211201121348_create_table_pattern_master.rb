class CreateTablePatternMaster < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :pattern, :integer
    create_table :patterns do |t|
      t.string :name_en
      t.string :name_ja
    end
    add_column :items, :pattern_id, :integer
  end
end
