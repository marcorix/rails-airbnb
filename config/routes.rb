Rails.application.routes.draw do
  get 'chatrooms/show'

  devise_for :users
  root to: "pages#home"
  get 'my-profile', to: 'pages#my_profile'

  resources :flats, only: ['index', 'show'] do
    resources :bookings, only: ['create']
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

end
