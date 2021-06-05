class Document < ApplicationRecord
  validates :name, presence: true
  validates :score, presence: true

  TOTAL_SCORE = 5.0
end
