class Recipe < ApplicationRecord
  has_many :how_tos, dependent: :destroy

  accepts_nested_attributes_for :how_tos, limit:10

  validates :name, length: { in: 2..30 }
end
