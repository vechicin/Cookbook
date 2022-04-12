class AddUserRefToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :user, foreign_key: { to_table: :users }, null: false
  end
end
