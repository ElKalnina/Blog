Rails.application.routes.draw do


  get 'welcome/index'
  resources :tasks
  root 'welcome#index'

  resources :tasks do
    resources :comments
end
end
