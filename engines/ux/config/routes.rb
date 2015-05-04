Ux::Engine.routes.draw do

  get 'login' => 'sessions#new', :as => 'login'
  get 'admin', to: 'admin#index'
  get 'admin/new-tester', to: 'admin#index'

  resources :sessions
  resources :tester, only: [:new, :create], as: :testers

  root 'home#index'
end
