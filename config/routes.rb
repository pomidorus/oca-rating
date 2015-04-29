Rails.application.routes.draw do

  get 'municipal_sites/index'

  root 'main#index'

  namespace :admin do
    resources :regions
    get 'data/export'
    post 'data/import'
    root 'admin#index'
  end

  resources :municipal_sites, only: [:index]
  resources :budgets, only: [:index]
  resources :deklaracii, only: [:index]

  resources :link, path: '', only: [:show] do
  end
  get ':id/budget', to: 'link#budget', as: :link_budget
  get ':id/deklaracii', to: 'link#disclosures', as: :link_disclosures

  resource :datasets, only: [] do
    get 'local_site'
  end

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1 do
      resources :regions, only: [:index]
      resources :cities, only: [:index]
    end
  end


  resources :regions

  resources :cities do
    resource :region, only: [:show]
  end
end
