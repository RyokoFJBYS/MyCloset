class Item < ApplicationRecord

  attachment :image
  belongs_to :type
  belongs_to :color
  belongs_to :pattern
  belongs_to :season
  belongs_to :user

  self.inheritance_column = :_type_disabled

  validates :name, presence: true
  validates :image, presence: true
end
