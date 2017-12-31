# frozen_string_literal: true

Rails.application.routes.draw do
  get 'login/index'
  get 'login/logout'
  post 'login/index_do'

  get 'home/index'

  resources :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', via: %i[get post]
end
