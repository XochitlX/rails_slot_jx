Rails.application.routes.draw do
  root to: 'rolls#index'
  resources :rolls
  #get 'rolls/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
