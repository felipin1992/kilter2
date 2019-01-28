Rails.application.routes.draw do
     devise_for :users, controllers: {
       sessions: 'users/sessions'
     }
     # Serve websocket cable requests in-process
     mount ActionCable.server => '/cable'

  resources :likes
  resources :dogs
  resources :users, only:[:new, :create] do
   resources :chats, only: [:index, :show, :create]
  end
  resources :messages, only:[:create]

  resources :sessions, only:[:new, :destroy, :create]

  get 'users/index'
  get 'users/registrations'

  root to:'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
