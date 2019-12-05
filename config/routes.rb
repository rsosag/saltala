Rails.application.routes.draw do

  get 'users', to: 'users#index'
  get 'users/:id/show', to: 'users#show'
  get 'users/new', to: 'users#new'
  get 'users/:id/edit', to: 'users#edit'
  post 'users/create', to: 'users#create'
  patch 'users/:id/update', to: 'users#update'
  delete 'users/:id/destroy', to: 'users#destroy'

  resources :corporations
  root 'corporations#index'

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
