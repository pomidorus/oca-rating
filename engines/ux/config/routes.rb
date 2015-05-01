Ux::Engine.routes.draw do

  get 'admin', to: 'admin#index'
  get 'admin/new-tester', to: 'admin#index'

  resources :tester, only: [:new, :create], as: :testers

  root 'home#index'
end
