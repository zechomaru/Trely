class Admin::ServicesController < ApplicationController
	layout 'admin'
	before_action :authenticate_admin!

	def index
		@services = Service.all.order(created_at: :desc)
		
	end

	def new
		@service = Service.new
	end

	def create
	  service = Service.new(service_params)
	  if service.save
      redirect_to admin_services_path
	  else
	    render 'new'
	  end
	end

	def edit
		@service = Service.find(params[:id])
	end

	def update
		@service = Service.find(params[:id])
	  if @service.update(service_params)
	    redirect_to admin_services_path
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @service = Service.find(params[:id])
	  @service.destroy
	  redirect_to admin_services_path
	end

  private
		def service_params
		  params.require(:service).permit(:name, :category_id, :bundle_id, :img, :imghover)
		end
end
