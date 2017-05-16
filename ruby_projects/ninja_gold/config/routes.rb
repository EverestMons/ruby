Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'world' => 'treasures#world'

  post 'world' => 'treasures#give_gold'

  get '/world/farm' => 'treasures#farm_gold'
end
