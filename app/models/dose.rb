class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: [:cocktail, :ingredient] }
  validates :ingredient, presence: true
end
