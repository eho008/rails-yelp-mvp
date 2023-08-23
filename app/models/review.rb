class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (1..5) }
  validates :rating, numericality: { only_integer: true }
end
