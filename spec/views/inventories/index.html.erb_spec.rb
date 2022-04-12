require 'rails_helper'

RSpec.describe 'inventories/index', type: :view do
  before(:each) do
    assign(:inventories, [
             Inventory.create!(
               name: 'Name'
             ),
             Inventory.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of inventories' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
