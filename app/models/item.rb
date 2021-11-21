class Item < ApplicationRecord
  
  belongs_to :user
  has_many :post_item_relations, dependent: :destroy
  
end
