class HowTo < ApplicationRecord
  belongs_to :recipe

  validates :how_to, presence: true, length: { maximum: 20 } 
end
