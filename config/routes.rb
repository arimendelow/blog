Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  	resources :comments # Create comments as a nested resource within articles
  end

  root 'welcome#index'
end
