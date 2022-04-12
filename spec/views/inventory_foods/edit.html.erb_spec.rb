require 'rails_helper'

RSpec.describe 'inventory_foods/edit', type: :view do
  before(:each) do
    @inventory_food = assign(:inventory_food, InventoryFood.create!(
                                                quantity: 'MyString'
                                              ))
  end

  it 'renders the edit inventory_food form' do
    render

    assert_select 'form[action=?][method=?]', inventory_food_path(@inventory_food), 'post' do
      assert_select 'input[name=?]', 'inventory_food[quantity]'
    end
  end
end
