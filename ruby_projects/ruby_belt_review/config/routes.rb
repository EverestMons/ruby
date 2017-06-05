Rails.application.routes.draw do
  get 'messages/create'

  get 'messages/edit'

  get 'messages/update'

  get 'attendees/create'

  get 'attendees/attending'

  get 'attendees/destroy'

  root 'events#index'

  get 'events/new' => 'events#new'

  post 'events/create' => 'events#create'

  get 'events/show'

  get 'events/edit'

  get 'events/update'

  get 'events/user_state'

  get 'events/other_states'

  get 'users' => 'users#new'

  post 'users' => 'users#create'

  get 'users/edit' => 'users#edit'

  get 'users/update' => 'users#update'

  post 'users/login' => 'users#login'

  get 'users/logout' => 'users#logout'

  post 'users/register' => 'users#register'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
