require 'rails_helper'

RSpec.describe 'recipe_foods/index', type: :view do
  before(:each) do
    assign(:recipe_foods, [
             RecipeFood.create!(
               quantity: 'Quantity'
             ),
             RecipeFood.create!(
               quantity: 'Quantity'
             )
           ])
  end

  it 'renders a list of recipe_foods' do
    render
    assert_select 'tr>td', text: 'Quantity'.to_s, count: 2
  end
end
