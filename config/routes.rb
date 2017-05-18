Rails.application.routes.draw do
  resources :artists
  resources :artists do
    resources :songs, only: [:new, :create]
  end
  resources :songs, only: [:show]
  resources :playlists, only: [:index, :new, :create, :show]
end
