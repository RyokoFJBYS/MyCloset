class Type < ApplicationRecord
  has_many :items
  def name
    self.send("name_#{I18n.locale}")
  end

end
