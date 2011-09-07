class RewardsController < ApplicationController
  
  def toggle_in_cart
    cookies[:cart] = "" if cookies[:cart].nil?
    
    split = cookies[:cart].split(",")
    
    if split.include? params[:id]
      split.delete params[:id]
    else
      split << params[:id]
    end
    
    cookies[:cart] = split.join(",")
    
    head :ok
  end
  
end
