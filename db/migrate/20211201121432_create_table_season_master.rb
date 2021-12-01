class CreateTableSeasonMaster < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :season, :integer
    create_table :seasons do |t|
      t.string :name_en
      t.string :name_ja
    end
    add_column :items, :season_id, :integer
  end
end
