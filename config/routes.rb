Rails.application.routes.draw do
  get 'pages/index'

  root to: 'pages#index'
  get 'login', to: 'sessions#new'







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
