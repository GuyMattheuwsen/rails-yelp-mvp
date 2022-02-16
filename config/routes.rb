Rails.application.routes.draw do
  # get 'reviews/show'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create, :show ]
  end
end
