Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  	resources :comments # Create comments as a nested resource within articles

  root 'welcome#index'
end
