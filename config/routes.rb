Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :matches do
    resources :bookings, only: [:new, :create]
  end
  resources :venues, only: [:create, :index, :show, :edit, :update, :new] do
    resources :reviews, only: [:create]
  end
  resources :chatroom, only: [:index, :show] do
    resources :messages, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:destroy, :show] do
    resources :payments, only: [:new, :create]
  end
  get "/dashboard", to: "pages#dashboard"

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
