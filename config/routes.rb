Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'hikes#index'
  resources :hikes 

  resources :trailheads do
    resources :hikes
  end
  #get '/trailheads/:id', to: 'trailheads#show', as: "trailhead"
end
