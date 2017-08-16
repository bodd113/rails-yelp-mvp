Rails.application.routes.draw do
  # get '/restaurants/:id', to: 'restaurant#show'

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
