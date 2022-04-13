class ChangeFoodsPriceColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :foods, :price, :string
  end
end
