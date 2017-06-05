Rails.application.routes.draw do
  get 'hits/all'

  get 'hits/single_user'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/playlist'

  get 'songs/new'

  get 'songs/create'

  get 'songs/show'

  get 'songs/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
