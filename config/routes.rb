Rails.application.routes.draw do
  resources :creative_configurations
  resources :accounts
  resources :configurables
  resources :plans
end
