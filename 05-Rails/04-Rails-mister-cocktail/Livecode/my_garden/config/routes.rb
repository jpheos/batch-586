Rails.application.routes.draw do
  get 'plant_tags/new'
  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'gardens#index'
end
