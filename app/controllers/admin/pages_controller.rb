class Admin::PagesController < ApplicationController
	layout 'admin'
	before_action :authenticate_admin!

	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		page = Page.new(page_params)
		if page.save
			redirect_to admin_pages_path
		else
			render 'new'
		end
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		page = Page.find(params[:id])
		if page.update(page_params)
			redirect_to admin_pages_path
		else
			render 'edit'
		end
	end

	def destroy
		page = Page.find(params[:id])
		page.destroy
		redirect_to admin_pages_path
	end

	private
	def page_params
		params.require(:page).permit(:url, :title, :subtitle, :buttom, :paso_one, :paso_two, :paso_tree, :visibility, :service_id, :bundle_id)
	end

end