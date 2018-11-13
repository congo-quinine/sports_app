Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sports
  resources :users

  get "/login", to: 'users#login'
  get "/sport_selection", to: 'sports#sport_selection'

end
