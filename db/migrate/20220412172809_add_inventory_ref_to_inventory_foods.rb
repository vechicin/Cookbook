class AddInventoryRefToInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventory_foods, :inventory, foreign_key: { to_table: :inventories }, null: false
  end
end
