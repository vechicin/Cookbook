require 'rails_helper'

RSpec.describe 'inventory_foods/index', type: :view do
  before(:each) do
    assign(:inventory_foods, [
             InventoryFood.create!(
               quantity: 'Quantity'
             ),
             InventoryFood.create!(
               quantity: 'Quantity'
             )
           ])
  end

  it 'renders a list of inventory_foods' do
    render
    assert_select 'tr>td', text: 'Quantity'.to_s, count: 2
  end
end
