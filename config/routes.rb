Rails.application.routes.draw do
  resources :sexes
  resources :ages
  resources :states
  resources :sickness_specifics
  resources :sickness_generals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
