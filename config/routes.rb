Tapuaki::Application.routes.draw do
  
  resources :appeals
  
  match "cart", :to => "cart#show", :as => :cart
  
  get "reward/:id/toggle_in_cart/", :to => "rewards#toggle_in_cart", :as => "reward_toggle_in_cart"

  root :to => "home#index"
  
end
