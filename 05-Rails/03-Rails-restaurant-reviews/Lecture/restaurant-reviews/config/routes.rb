Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end
    member do
      get :chef
    end
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [ :destroy ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'aa/:var/bb', to: 'application#test'

  root to: redirect('/restaurants')
end

# POST /restaurants/:restaurant_id/reviews
# DELETE /reviews/:id