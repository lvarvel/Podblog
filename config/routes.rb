Podblog::Application.routes.draw do

  resources :podcasts

  resources :posts

  resources :users

  root :to => 'posts#index'
end
