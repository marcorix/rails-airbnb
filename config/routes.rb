Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  get 'my-profile', to: 'pages#my_profile'
  resources :flats, only: ['index', 'show'] do
    resources :bookings, only: ['create']
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
