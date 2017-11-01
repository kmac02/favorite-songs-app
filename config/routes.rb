Rails.application.routes.draw do
  root 'songs#index'
  resources :songs, only: [:index] do
    resources :favorites
  end

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
