# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get 'shopping_list/:recipe_id', to: 'recipes#shopping_list'
  get 'recipe_foods/:recipe_id', to: 'recipe_foods#new'
  post 'recipe_foods/:recipe_id', to: 'recipe_foods#create'

  resources :recipe_foods
  resources :public_recipes, only: [:index, :show]
  resources :recipes, except: [:update, :edit]
  resources :foods, except: [:edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "public_recipes#index"
end
