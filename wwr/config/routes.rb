Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index'
  get 'posts/:id' => 'posts#show', as: 'post'
  get 'about' => 'about#index', as: 'about'
  root 'posts#index'
end
