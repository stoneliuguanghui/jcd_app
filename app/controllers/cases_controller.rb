class CasesController < ApplicationController
	before_action :case_params,only:[:update,:edit,:destroy,:show]
  def new
  	@case = Case.new
  end

  def create
  	@case = Case.new method_name
  	if @case.save
  		redirect_to @case
  	else
  		redirect_to new_case
  	end
  end


  def index
    @case=Case.first
  end

  def update
  	if @case.update method_name
  		redirect_to @case
  	else
  		render "edit"	
  	end
  end

  def edit
  end

  def destroy
  end

  private
  def method_name
  	params.require(:case).permit(:introduct,:ishop,:orange,:rsheng,
  		:law,:wealth,:wangt,:xibaohui,:contact,:name)
  end

  def case_params
  	@case = Case.find(params[:id])
  end

end
