Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :tasks do
    resources :comments
end
end
