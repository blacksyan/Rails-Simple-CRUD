Rails.application.routes.draw do
  # to map request to localhost:3000/welcome/index to the welcome controller's index action
  get 'welcome/index'

  # use resources method to declare a standard REST resource
  resources :articles

  # to map request to the root of the apps to the welcome controller's index action
  root 'welcome#index'
end
