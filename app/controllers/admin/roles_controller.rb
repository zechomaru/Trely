class Admin::RolesController < ApplicationController
		layout 'admin'
	before_action :authenticate_admin!
	
	def new
		@role = Admin_role.new
	end

	def create
	  role = Video.new(roles_params)
	  if role.save
	    message = "Video creado"
	  else
	    message = "Error al crear el video"
	  end
	end

	def roles_params
	  params.require(:role).permit(:name)
	end
end
