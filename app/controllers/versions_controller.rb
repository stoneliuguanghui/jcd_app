class VersionsController < ApplicationController
	before_action :find_params, only: [:update,:show,:edit,:destroy]

	def new
		@version = Version.new
	end

	def create
		@version = Version.new text_params
		if @version.save
			redirect_to @version
		else
			redirect_to new_version
		end
	end

	def index
		@versions = Version.all
	end

	def destroy
		@version.destroy
		redirect_to @version

	end

	def update
		if find_params.update text_params
			redirect_to @version
		else
			render 'edit'
		end
	end

	private
	def text_params
		params.require(:version).permit(:content)
	end

	def find_params
		@version=Version.find params[:id]
	end
end
