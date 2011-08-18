class HomeController < ApplicationController
  
  def index
    @featured = Request.limit 3
  end
  
end
