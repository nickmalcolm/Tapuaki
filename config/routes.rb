Tapuaki::Application.routes.draw do
  
  resources :appeals

  root :to => "home#index"
  
end
