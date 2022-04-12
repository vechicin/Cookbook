class Inventory < ApplicationRecord
  has_many :inventory_foods, foreign_key: :inventory_id
  belongs_to :user
end
