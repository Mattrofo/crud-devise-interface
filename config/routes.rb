Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :rooms do
    resources :bookings, only: [:create]
  end


  patch "booking/:id/accepted", to: "bookings#accepted", as: :booking_accepted
  patch "booking/:id/refused", to: "bookings#refused", as: :booking_refused

end
