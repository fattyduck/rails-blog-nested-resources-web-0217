RailsBlog::Application.routes.draw do

  get 'comments/create'

  resources :users
  resources :tags
  resources :posts
  resources :comments

end
