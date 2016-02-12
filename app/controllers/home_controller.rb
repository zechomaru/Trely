class HomeController < ApplicationController

  def index
  	@pages = Page.joins(:service).where(visibility: true)
  end
  
end
