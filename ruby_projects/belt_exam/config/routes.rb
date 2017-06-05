Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'users' => 'users#new'

post 'users/login' => 'users#login'

get 'users/logout' => 'users#logout'

post 'users/register' => 'users#register'

root 'songs#index'

post 'songs/create' => 'songs#create'

get 'songs/show/:id' => 'songs#show'

get 'songs/add/:id' => 'adds#add_song'



end
