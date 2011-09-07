Tapuaki::Application.routes.draw do
  
  resources :appeals
  
  get "reward/:id/toggle_in_cart/", :to => "rewards#toggle_in_cart", :as => "reward_toggle_in_cart"

  root :to => "home#index"
  
end
