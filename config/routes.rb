Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  resources :positions,   only: [:create, :update]
  resources :team,        only: [:create, :update]
  resources :walks,       only: [:create, :update, :destroy, :index, :show, :new]
  resources :user_walks,  only: [:create, :update, :destroy]
  resources :skill_sets,  only: [:create, :update, :destroy]
  resources :skills,      only: [:create, :update]
end
