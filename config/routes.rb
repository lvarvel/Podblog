Podblog::Application.routes.draw do
  resources :users

  resources :podcasts

  resources :posts

  root :to => 'posts#index'
end
