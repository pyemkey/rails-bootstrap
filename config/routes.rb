RailsBootstrap::Application.routes.draw do
  root to: "visitors#new"
  resources :visitors, only: [:new, :create]
end
