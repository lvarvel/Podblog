Podblog::Application.routes.draw do

  resources :podcasts

  resources :posts

  resources :users

  resources :user_sessions

  root :to => 'posts#index'
end
