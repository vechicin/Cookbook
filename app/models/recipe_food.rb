class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  def self.total_ingredients_cost(recipe_id)
    recipes = RecipeFood.where(recipe_id:)
    return 0 if recipes.empty?

    recipes.map { |recipe| recipe.quantity * recipe.food.price }.sum.round(2)
  end

  def self.total_ingredients(recipe_id)
    RecipeFood.where(recipe_id:).count
  end
end
