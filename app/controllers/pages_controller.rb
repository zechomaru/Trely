class PagesController < ApplicationController

	def show
		@page = Page.find_by_url(params[:url])
	end

end
