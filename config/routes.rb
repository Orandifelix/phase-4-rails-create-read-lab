Rails.application.routes.draw do
  get 'plants/create'
  get 'plants/index'
  get 'plants/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :plants, only:[:index, :show, :create, :destroy]
end
