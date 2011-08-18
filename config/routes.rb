Tapuaki::Application.routes.draw do
  
  resources :requests

  root :to => "home#index"
  
end
