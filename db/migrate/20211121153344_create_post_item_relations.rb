class CreatePostItemRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :post_item_relations do |t|

      t.timestamps
    end
  end
end
