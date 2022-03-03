Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ==================== Route Home Page ====================
  root to: "pages#home"

  # ==================== Routes App ====================
  resources :cities, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :pulses, only: [:index, :show, :new, :create]
  end
  resources :pulses, only: [:destroy] do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:destroy]

  # ==================== Route Profile ====================
  get 'profile/:id', to: 'dashboards#profile', as: :profile
  get 'dashboard/:city_id', to: 'dashboards#dashboard', as: :dashboard
end
