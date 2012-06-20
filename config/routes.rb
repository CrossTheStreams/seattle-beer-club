SeattleBeerClub::Application.routes.draw do

  devise_for :users

  root to: 'main#index' 
  resources :beers 

  get "signup" => "users#new", :as => "signup"

  match '/auth/:provider/callback', :to => 'sessions#callback'
  
 

end
