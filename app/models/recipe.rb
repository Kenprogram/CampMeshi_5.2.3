class Recipe < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_many :how_tos, dependent: :destroy

  accepts_nested_attributes_for :materials, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :how_tos, reject_if: :all_blank, allow_destroy: true

  validates :title, length: { in: 1..30 }

  enum category: {
    肉: 0, 魚介: 1, 野菜: 2, ご飯: 3, パン: 4, 
    乳製品: 5, 卵: 6, その他: 7
  }
end
