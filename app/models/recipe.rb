class Recipe < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
  validates :servings, presence: true
end
