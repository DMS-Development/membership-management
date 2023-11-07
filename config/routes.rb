Rails.application.routes.draw do
  get 'membership_types/index'
  get 'membership_types/new'
  get 'membership_types/create'
  get 'membership_types/edit'
  get 'membership_types/update'
  get 'membership_types/destroy'
  get 'memberships/new'
  get 'memberships/create'
  get 'memberships/edit'
  get 'memberships/update'
  get 'memberships/show'
  get 'events/idex'
  get 'events/new'
  get 'events/create'
  get 'events/edit'
  get 'events/update'
  get 'events/show'
  get 'events/destroy'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users do
    resources :addresses
  end

  resources :events do
    resources :attendances, only: [:index, :create, :destroy]
  end

  resources :memberships

  resources :membership_types, except: [:destroy]

end
