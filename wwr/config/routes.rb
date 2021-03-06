Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'posts/index'
  # get 'posts/new' => 'posts#new', as: 'new_post'
  # post 'posts'    => 'posts#create', as: 'create_post'
  # get 'posts/:id' => 'posts#show', as: 'posts'

  resources :posts, only: [:index, :new, :create, :show]
 

  get 'about' => 'about#index', as: 'about'
  root 'posts#index'
end
