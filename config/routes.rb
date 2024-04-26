Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get "up" => "rails/health#show", :as => :rails_health_check

  root to: "dashboard#index"

  resources :users, except: :show

  resources :roles, except: :show

  resources :teams, except: :show

  get "dashboard" => "dashboard#index", :as => "dashboard"
end
