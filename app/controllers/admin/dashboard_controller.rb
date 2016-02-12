class Admin::DashboardController < ApplicationController
	layout 'admin'
	before_action :authenticate_admin!
	def index
		@pageCount = Page.where(visibility: true).count
	end
end
