Rails.application.routes.draw do
  root to: 'messages_controller#index'
  get 'messages_controller/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
