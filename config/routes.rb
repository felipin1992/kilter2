Rails.application.routes.draw do
     devise_for :users, controllers: {
       sessions: 'users/sessions'
     }

  resources :likes
  resources :dogs

  get 'users/index'
  get 'users/registrations'

  root to:'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
