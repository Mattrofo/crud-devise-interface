Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :rooms do
    resources :bookings, only: [:create]
  end


  patch "booking/:id/accepted", to: "bookings#accepted", as: :booking_accepted
  patch "booking/:id/refused", to: "bookings#refused", as: :booking_refused

end
