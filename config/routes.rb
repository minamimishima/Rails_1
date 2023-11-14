Rails.application.routes.draw do
  get 'schedules/index', to: 'schedules#index'
  get 'schedules/new', to: 'schedules#new'

  resources :schedules
end