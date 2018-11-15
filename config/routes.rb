Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sports
  resources :users
  #

  get "/sport_selection", to: 'sports#sport_selection'
  get "/update_sport", to: 'sports#update_sport'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
