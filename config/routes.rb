Rails.application.routes.draw do
  get 'profiles/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/myapplications', to: 'pages#myapplications', as: :myapplications
  resources :positions,   only: [:create, :update, :show]
  resources :team,        only: [:create, :update]
  resources :walks,       only: [:create, :update, :destroy, :index, :show, :new] do
    resources :user_walks,  only: [:create]
  end
  resources :user_walks, only: [:destroy, :edit, :update]
  resources :skill_sets,  only: [:create, :update, :destroy]
  resources :skills,      only: [:create, :update]
  resources :profiles, only: [:update]
end
