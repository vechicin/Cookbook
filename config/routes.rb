# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show] do
    resources :foods, only: [:index, :new, :create, :destroy, :show]
    resources :recipes
  end

  get 'shopping_list/:recipe_id', to: 'recipes#shopping_list'

  resources :inventory_foods
  resources :recipe_foods
  resources :inventories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
