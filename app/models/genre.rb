class Genre < ApplicationRecord
  has_many :items, dependent: :destroy

  # validates :name, presemce: true, uniqueness: true
end
