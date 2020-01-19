class HowTo < ApplicationRecord
  belongs_to :recipe

  validates :how_to, presence: true, length: { maximum: 50 } 
end
