class Post < ApplicationRecord

  belongs_to :user
  # has_many :post_item_relations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
  attachment :image
  
  acts_as_taggable

end
