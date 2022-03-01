Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ==================== Route Home Page ====================
  root to: "pages#home"

  # ==================== Routes App ====================
  resources :cities, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :pulses, only: [:index, :show, :new, :create] do
      resources :favorites, only: [:new, :update]
    end
  end
  resources :pulses, only: [:destroy]

  # ==================== Route Profile ====================
  get 'profile/:id', to: 'dashboards#profile', as: :profile

end
