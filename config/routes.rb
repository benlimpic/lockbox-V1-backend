Rails.application.routes.draw do

  
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  post :projects, to: "projects#create"

  resources :users
  namespace :api do
    namespace :v1 do
      resources :projects do
        resources :keys
      end
    end
  end


  root to: "static#home"
end
