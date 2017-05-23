Rails.application.routes.draw do
  root 'teas#index'


  get 'comments/create'

  get 'comments/destroy'

  get 'comments/update'

  get 'comments/show'

  get 'teas/new'

  post 'teas/create' => 'teas#create'

  get 'teas/destroy'

  get 'tea_users/create'

  get 'tea_users/destroy'

  get 'friendships/create'

  get 'friendships/destroy'

  get 'friendships/index'

  get 'users/logout' => 'users#logout'

  get 'users' => 'users#new'

  post 'users' => 'users#create'

  post 'users/login' => 'users#login'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
