Rails.application.routes.draw do
  # serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  # resources :users
  resources :messages
  resources :chatrooms, param: :id
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
