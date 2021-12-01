class Item < ApplicationRecord

  # has_many :post_item_relations, dependent: :destroy

  attachment :image
  belongs_to :type
  belongs_to :color
  belongs_to :pattern
  belongs_to :season
#  enum type: { bottoms: 0, tops: 1, allinone: 2, outer: 3 }
#  enum color: { black: 0, white: 1, red: 2, orange: 3, yellow: 4, yellow_green: 5, green: 6, light_blue: 7, blue: 8, navy: 9, purple: 10, pink: 11, brown: 12, gray: 13, beige: 14, colorful: 15, other_color: 16 }
#  enum pattern: { plain: 0, plaid: 1, flower: 2, dot: 3, stripe: 4, border: 5, camouflage: 6, animal: 7, illustration: 8, paisley: 9, botanical: 10, herringbone: 11, native: 12, houndstooth: 13, geometry: 14, other_pattern: 15 }
#  enum season: { spring: 0, summer: 1, autumn: 2, winter: 3, all_season: 4 }

  # attr_accessor :name, :type
  self.inheritance_column = :_type_disabled

end
