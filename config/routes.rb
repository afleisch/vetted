Vetted::Application.routes.draw do
  devise_for :users
  root to: "sites#index"
  resources :things
  resources :profiles, only:[:show]
end
