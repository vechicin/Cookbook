class AddFoodRefToInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventory_foods, :food, foreign_key: { to_table: :foods }, null: false
  end
end
