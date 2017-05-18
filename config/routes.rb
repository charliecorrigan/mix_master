Rails.application.routes.draw do
  resources :artists
  resources :artists do
    resources :songs, only: [:new, :create]
  end
  resources :songs, only: [:show]
end
