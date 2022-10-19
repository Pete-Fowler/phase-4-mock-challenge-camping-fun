Rails.application.routes.draw do
  resources :campers, only: %i[index show create]
  resources :signups, only: %i[create]
  resources :activities, only: %i[index destroy]
end
