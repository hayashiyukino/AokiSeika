class Genre < ApplicationRecord
  has_many :items, dependent: :destroy
  
  scope :only_active, -> { where(is_active: true) }

  validates :name, presence: true, uniqueness: true
end
