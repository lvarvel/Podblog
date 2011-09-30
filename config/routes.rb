Podblog::Application.routes.draw do
  resources :podcasts

  resources :posts

  root :to => 'posts#index'
end
