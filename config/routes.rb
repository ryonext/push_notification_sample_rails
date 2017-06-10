Rails.application.routes.draw do
  resources :push_notifications
  resources :platform_endpoints
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "platform_endpoints#index"
end
