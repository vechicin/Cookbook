class Food < ApplicationRecord
  has_many :recipe_foods, foreign_key: :food_id
  has_many :inventory_foods, foreign_key: :food_id
  belongs_to :user
end
