Rails.application.routes.draw do
  # get '/restaurants/:id', to: 'restaurant#show'
  root to: "controller#action"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
