Rails.application.routes.draw do
  resources :quantities
  get 'welcome/index'

  resources :periods
  resources :sexes
  resources :ages
  resources :states
  resources :sickness_specifics
  resources :sickness_generals

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
