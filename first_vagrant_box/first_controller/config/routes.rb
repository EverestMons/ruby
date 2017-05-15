Rails.application.routes.draw do
  get 'products/index'

  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  get 'users/home'

  get 'users/list_products'

  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :products
end
