Vetted::Application.routes.draw do
  devise_for :users
  root to: "sites#index"
  resources :things, :profiles, only:[:show]
end
