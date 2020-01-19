class Recipe < ApplicationRecord
  has_many :how_tos, dependent: :destroy

  accepts_nested_attributes_for :how_tos, limit:10, allow_destroy: true

  validates :title, length: { in: 1..30 }
end
