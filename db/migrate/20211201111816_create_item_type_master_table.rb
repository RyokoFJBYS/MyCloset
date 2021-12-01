class CreateItemTypeMasterTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :type, :integer
    create_table :types do |t|
      t.string :name_en
      t.string :name_ja
    end
    add_column :items, :type_id, :integer
  end
end
