WebRestClient::Application.routes.draw do
  resources :requests, only: [:index, :new, :create]

  root :to => 'requests#new'
end
