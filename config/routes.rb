WebRestClient::Application.routes.draw do
  resources :requests, only: [:new, :create]

  root :to => 'requests#new'
end
