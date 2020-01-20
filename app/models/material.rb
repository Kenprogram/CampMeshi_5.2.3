class Material < ApplicationRecord
  belongs_to :recipe

  validates :material, presence: true, length: { maximum: 20 } 
end
