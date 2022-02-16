class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: (0..5)
  validates_numericality_of :rating, :only_integer => true
end
