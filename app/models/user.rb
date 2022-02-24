class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :items, dependent: :destroy

  enum status:{released: 0, nonreleased: 1}

  validates :name, presence: true

end
