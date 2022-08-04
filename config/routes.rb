# frozen_string_literal: true

Rails.application.routes.draw do
  get '/splash', to: 'splashes#index'
  root 'groups#index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users do
    resources :groups do
      resources :entities
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
