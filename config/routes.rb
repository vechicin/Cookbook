# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  
  resources :inventory_foods
  resources :recipe_foods
  resources :inventories
  resources :recipes
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
