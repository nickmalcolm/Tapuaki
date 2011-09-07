class CartController < ApplicationController
  
  def show
    cart = cookies[:cart]
    @rewards = []
    cart.split(",").each do |c|
      @rewards << Reward.find(c.to_i)
    end
  end
  
end
