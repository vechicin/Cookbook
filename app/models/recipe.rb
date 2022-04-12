class Recipe < ApplicationRecord
  has_many :recipe_foods, foreign_key: :recipe_id
  belongs_to :user
end
