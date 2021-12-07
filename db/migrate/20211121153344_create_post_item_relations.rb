class CreatePostItemRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :post_item_relations do |t|
      t.belongs_to :post, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps
    end
  end
end
