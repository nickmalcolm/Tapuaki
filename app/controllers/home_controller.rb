class HomeController < ApplicationController
  
  def index
    @featured = Appeal.limit 3
  end
  
end
