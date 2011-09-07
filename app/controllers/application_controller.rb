class ApplicationController < ActionController::Base
  protect_from_forgery
  
  after_filter :show_cart
  
  def show_cart
    p cookies[:cart]
  end
  
end
