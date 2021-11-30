class Post < ApplicationRecord

  belongs_to :user
  # has_many :post_item_relations, dependent: :destroy
  has_many :favorites, dependent: :destroy

end
