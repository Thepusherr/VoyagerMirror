Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", :as => :rails_health_check

  root to: "dashboard#index"

  resources :users, except: :show

  resources :roles

  resources :teams

  get 'dashboard' => 'dashboard#index', as: 'dashboard'
end
