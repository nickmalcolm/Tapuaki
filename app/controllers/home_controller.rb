class HomeController < ApplicationController
  
  def index
    @featured = Appeal.limit 3
    @appeals = Appeal.all
  end
  
end
